================================================
Custom Resources
================================================

.. revealjs::

 .. revealjs:: Custom Resources
    :noheading:

    .. image:: ../../images/custom_resources.svg


 .. revealjs:: About Custom Resources

    A custom resource:

    * Is a simple extension of |chef|
    * Is implemented as part of a cookbook
    * Follows easy, repeatable syntax patterns
    * Effectively leverages resources that are built-in to |chef|
    * Is reusable in the same way as resources that are built-in to |chef|

    For example, |chef| includes built-in resources to manage files, packages, templates, and services, but it does not include a resource that manages websites.


 .. revealjs:: Scenario: Create a Resource that Manages a Website

    Let's create a resource that installs and configures |apache| |httpd| on |redhat enterprise linux| 7 and |centos| 7.

    This scenario covers the following:

    #. Defining a cookbook named ``website``; updating the ``README.md`` and ``metadata.rb`` files
    #. Creating two templates
    #. Defining each property
    #. Defining an action
    #. For the action, defining the steps that are needed to configure the system, and then implementing those steps using the resources that are built-in to |chef|
    #. Adding the resource to a recipe
    #. Testing the resource using |kitchen|


 .. revealjs:: Create a Cookbook

    This article assumes that a cookbook directory named ``website`` exists in a |chef repo| with (at least) the following directories and file names:

    .. code-block:: text

       /website
         metadata.rb
         /recipes
         README.md
         /resources
         /templates

    See https://docs.chef.io/ctl_chef.html for more information about how to use the ``chef`` command-line tool that is packaged with the |chef dk| to build the |chef repo|, plus related cookbook sub-directories.


 .. revealjs:: Update the Readme

	Update the ``README.md`` file:

	.. code-block:: text

	   Your Cookbook
	   =====================================================
   
	   License and Authors
	   -------------------
   
	   * License: Apache 2.0
	   * Author: Your Name


 .. revealjs:: Update Metadata

	Update the ``metadata.rb`` file:

	.. code-block:: ruby

	   name              'website'
	   maintainer        'Your Company, Inc.'
	   maintainer_email  'you@example.com'
	   license           'Apache 2.0'
	   description       'Demo cookbook for custom resources in Chef 12.5'
	   long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
	   version           '0.1.0'


 .. revealjs:: Objectives
    :noheading:

    .. image:: ../../images/custom_resources_01.svg


 .. revealjs:: Objectives

	Define a custom resource. A custom resource typically contains:

	* A list of defined custom properties (property values are specified in recipes)
	* At least one action (actions tell the |chef client| what to do)
	* For each action, a collection of resources---|resource package|, |resource service|, |resource directory|, and |resource template|---that define the steps required to complete the desired action


 .. revealjs:: What is needed?

	This custom resource requires:

	* Two template files
	* Two properties
	* An action that defines all of the steps necessary to create the website


 .. revealjs:: Create Templates

	The ``/templates`` directory must contain two templates:

	* ``httpd.conf.erb`` to configure |apache| |httpd|
	* ``httpd.service.erb`` to tell |systemd| how to start and stop the website


 .. revealjs:: httpd.conf.erb

	``httpd.conf.erb`` stores information about the website and is typically located under the ``/etc/httpd``:

	.. code-block:: ruby

	   ServerRoot "/etc/httpd"
	   Listen <%= @port %>
	   Include conf.modules.d/*.conf
	   User apache
	   Group apache
	   <Directory />
	     AllowOverride none
	     Require all denied
	   </Directory>
	   DocumentRoot "/var/www/vhosts/<%= @instance_name %>"
	   <IfModule mime_module> 
	     TypesConfig /etc/mime.types
	   </IfModule>

	Copy it as shown, add it under the ``/templates`` directory, and then name the file ``httpd.conf.erb``.


 .. revealjs:: Template Variables

    The ``httpd.conf.erb`` template has two variables:

    * ``<%= @instance_name %>``
    * ``<%= @port %>``

    They are:

    * Declared as properties of the custom resource
    * Defined as variables in a |resource template| resource block within the custom resource
    * Tunable from a recipe when using ``port`` and ``instance_name`` as properties in that recipe
    * ``instance_name`` defaults to the ``'name'`` of the custom resource if not specified as a property


 .. revealjs:: httpd.service.erb

	``httpd.service.erb`` tells |systemd| how to start and stop the website:

	.. code-block:: ruby

	   [Unit]
	   Description=The Apache HTTP Server - instance <%= @instance_name %>
	   After=network.target remote-fs.target nss-lookup.target
       
	   [Service]
	   Type=notify
       
	   ExecStart=/usr/sbin/httpd -f /etc/httpd/conf/httpd-<%= @instance_name %>.conf -DFOREGROUND
	   ExecReload=/usr/sbin/httpd -f /etc/httpd/conf/httpd-<%= @instance_name %>.conf -k graceful
	   ExecStop=/bin/kill -WINCH ${MAINPID}
       
	   KillSignal=SIGCONT
	   PrivateTmp=true
       
	   [Install]
	   WantedBy=multi-user.target

	Copy it as shown, add it under the ``/templates`` directory, and then name it ``httpd.service.erb``.


 .. revealjs:: Define Properties
    :noheading:

    .. image:: ../../images/custom_resources_02.svg


 .. revealjs:: Define Properties

    Custom properties are defined in the resource. This custom resource needs two:

    * ``instance_name``
    * ``port``

    These properties are defined as variables in the ``httpd.conf.erb`` file. A |resource template| block in recipes will tell the |chef client| how to apply these variables.

 .. revealjs:: Define Properties (continued)

	In the custom resource, add the following custom properties:

	.. code-block:: ruby

	   property :instance_name, String, name_property: true
	   property :port, Fixnum, required: true

	where

	* ``String`` and ``Fixnum`` are |ruby| types (all custom properties must have an assigned |ruby| type)
	* ``name_property: true`` allows the value for this property to be equal to the ``'name'`` of the resource block

	The ``instance_name`` property is then used within the custom resource in many locations, including defining paths to configuration files, services, and virtual hosts.


 .. revealjs:: Define Actions
    :noheading:

    .. image:: ../../images/custom_resources_03.svg


 .. revealjs:: Define Actions

    Each custom resource must have at least one action that is defined within an ``action`` block:

    .. code-block:: ruby

       action :create do
         # the steps that define the action
       end

    where ``:create`` is a value that may be assigned to the ``action`` property for when this resource is used in a recipe.

    For example, the ``action`` appears as a property when this custom resource is used in a recipe:

    .. code-block:: ruby

       custom_resource 'name' do
         # some properties
         action :create
       end


 .. revealjs:: Define Resource
    :noheading:

    .. image:: ../../images/custom_resources_04.svg

 .. revealjs:: package

	Use the |resource package| resource to install |httpd|:

	.. code-block:: ruby

	   package 'httpd' do
	     action :install
	   end

 .. revealjs:: template, httpd.service

	Use the |resource template| resource to create an ``httpd.service`` on the node based on the ``httpd.service.erb`` template located in the cookbook:

	.. code-block:: ruby

	   template "/lib/systemd/system/httpd-#{instance_name}.service" do
	     source 'httpd.service.erb'
	     variables(
	       :instance_name => instance_name
	     )
	     owner 'root'
	     group 'root'
	     mode '0644'
	     action :create
	   end

	where

	* ``source`` gets the ``httpd.service.erb`` template from this cookbook
	* ``variables`` assigns the ``instance_name`` property to a variable in the template



 .. revealjs:: template, httpd.conf

	Use the |resource template| resource to configure |httpd| on the node based on the ``httpd.conf.erb`` template located in the cookbook:

	.. code-block:: ruby

	   template "/etc/httpd/conf/httpd-#{instance_name}.conf" do
	     source 'httpd.conf.erb'
	     variables(
	       :instance_name => instance_name,
	       :port => port
	     )
	     owner 'root'
	     group 'root'
	     mode '0644'
	     action :create
	   end

	where

	* ``source`` gets the ``httpd.conf.erb`` template from this cookbook
	* ``variables`` assigns the ``instance_name`` and ``port`` properties to variables in the template

 .. revealjs:: directory

	Use the |resource directory| resource to create the ``/var/www/vhosts`` directory on the node:

	.. code-block:: ruby

	   directory "/var/www/vhosts/#{instance_name}" do
	     recursive true
	     owner 'root'
	     group 'root'
	     mode '0755'
	     action :create
	   end

 .. revealjs:: service

	Use the |resource service| resource to enable, and then start the service:

	.. code-block:: ruby

	   service "httpd-#{instance_name}" do
	     action [:enable, :start]
	   end

 .. revealjs:: Final Resource (Part One)

	The finished custom resource should look exactly like this:

	.. code-block:: ruby

	   property :instance_name, String, name_property: true
	   property :port, Fixnum, required: true
   
	   action :create do
	     package 'httpd' do
	       action :install
	     end
   
	     template "/lib/systemd/system/httpd-#{instance_name}.service" do
	       source 'httpd.service.erb'
	       variables(
	        :instance_name => instance_name
	       )
	       owner 'root'
	       group 'root'
	       mode '0644'
	       action :create
	     end
   
	     ... # continued on next slide

 .. revealjs:: Final Resource (Part Two)

	.. code-block:: ruby

	   # continued from previous slide
   
	     template "/etc/httpd/conf/httpd-#{instance_name}.conf" do
	       source 'httpd.conf.erb'
	       variables(
	         :instance_name => instance_name,
	         :port => port
	       )
	       owner 'root'
	       group 'root'
	       mode '0644'
	       action :create
	     end
   
	     ... # continued on next slide

 .. revealjs:: Final Resource (Part Three)

	.. code-block:: ruby

	   # continued from previous slide
   
	     directory "/var/www/vhosts/#{instance_name}" do
	       recursive true
	       owner 'root'
	       group 'root'
	       mode '0755'
	       action :create
	     end
   
	     service "httpd-#{instance_name}" do
	       action [:enable, :start]
	     end
       
	   end


 .. revealjs:: Final Cookbook Directory

    When finished adding the templates and building the custom resource, the cookbook directory structure should look like this:

    .. code-block:: text

       /website
         /cookbooks
           /website
             metadata.rb
             /recipes
               default.rb
             README.md
             /resources
               httpd.rb
             /templates
               httpd.conf.erb
               httpd.service.erb


 .. revealjs:: Recipe
    :noheading:

    .. image:: ../../images/custom_resources_05.svg


 .. revealjs:: Add the Resource to a Recipe

	The custom resource name is inferred from the name of the cookbook (``website``), the name of the recipe (``httpd``), and is separated by an underscore(``_``): ``website_httpd``.

	.. code-block:: ruby

	   website_httpd 'httpd_site' do
	     port 81
	     action :create
	   end

	which does the following:

	* Installs |apache| |httpd|
	* Assigns an instance name of ``httpd_site`` that uses port 81
	* Configures |httpd| and |systemd| from a template
	* Creates the virtual host for the website
	* Starts the website using |systemd|




 .. revealjs:: Test
    :noheading:

    .. image:: ../../images/custom_resources_06.svg


 .. revealjs:: Add to Run-List, Run Kitchen

    Now run the recipe in this cookbook on a node that has |redhat enterprise linux| 7 or |centos| 7. |apache| |httpd| should be installed, configured, and started.

 .. revealjs:: Add to Run-List, Run Chef

    Now run the recipe in this cookbook on a node that has |redhat enterprise linux| 7 or |centos| 7. |apache| |httpd| should be installed, configured, and started.




 .. revealjs:: Questions

    .. include:: ../../includes_slides/includes_slides_core_questions.rst

 .. revealjs:: More Info About Resources

    For more information, see:

    * |url slides_docs_chef_io|
    * https://docs.chef.io/custom_resources.html




.. 
.. Notes for future sections:
.. 
.. 1) custom resource names (that don't join cookbook_recipe) by using provides
.. 2) proper location of the defaut.rb recipe (not in this cookbook!)
.. 3) Actual test scenarios for Kitchen and otherwise
.. 


