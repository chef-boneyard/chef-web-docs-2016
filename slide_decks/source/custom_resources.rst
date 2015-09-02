================================================
Custom Resources
================================================


.. revealjs::

 .. revealjs:: Custom Resources
    :noheading:

    .. image:: ../../images/custom_resources.svg


 .. revealjs:: About Custom Resources

    A custom resource is simple extension of |chef| that is a reusable component that isn't built-in to the core |chef| language. For example, |chef| includes resources to manage files, packages, templates, and services, but it does not include a resource to manage websites.


 .. revealjs:: Scenario: Build an Apache Website

    Let's create a resource that installs and configures |apache| |httpd| on |redhat enterprise linux| 7 and |centos| 7. We will do the following:

    #. Create a cookbook named ``website``.
    #. Update the ``README.md`` and ``metadata.rb`` files in that cookbook.
    #. Identify any properties that are needed by this custom resource, the actions to perform, and the steps required to complete these actions.
    #. Create two templates.
    #. Define properties.
    #. Define actions.
    #. For each action, define the steps that are needed to configure the system, and then implement those steps using the resources that are built-in to |chef|.
    #. Add the resource to a recipe.
    #. Test the resource using |kitchen|.

 .. revealjs:: Create a Cookbook

    Create a new (empty) cookbook using the ``chef`` command-line tool that is buil-in to the |chef dk|:

    .. code-block:: bash

       $ chef generate cookbook website


 .. revealjs:: Update the Readme

	Update the ``README.md`` file:

	.. code-block:: text

	   Custom Resources in Chef 12.5
	   =====================================================
   
	   License and Authors
	   -------------------
   
	   * License: Apache 2.0
	   * Author: Your Name


 .. revealjs:: Update Metadata

	Update the ``metadata.rb`` file:

	.. code-block:: text

	   name              'website'
	   maintainer        'Your Company, Inc.'
	   maintainer_email  'you@example.com'
	   license           'Apache 2.0'
	   description       'Demo cookbook for custom resources in Chef 12.5'
	   long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
	   version           '0.1.0'


 .. revealjs:: What should this resource do?
    :noheading:

    .. image:: ../../images/custom_resources_01.svg

 .. revealjs:: What should this custom resource do?

	A custom resource follows simple, repeatable syntax patterns, and effectively leverages the resources that are built-in to |chef|. A custom resource typically contains:

	* A list of custom properties; properties for a custom resource are set from within a recipe
	* At least one action; each action tells the |chef client| what to do
	* For each action, a collection of resources that are built-in to the |chef client|---|resource package|, |resource service|, |resource directory|, and |resource template|---that defines the steps required to complete the described action

 .. revealjs:: What is needed?

	This custom resource will need the following:

	* Two properties
	* Two templates
	* An action that creates the website
	* The steps required to complete this action, built using the |resource package|, |resource service|, |resource directory|, and |resource template| resources


 .. revealjs:: Create Templates

	The ``/templates`` directory must contain two templates:

	* One that configures |apache| |httpd|
	* One that manages the ``httpd.service``

 .. revealjs:: httpd.conf.erb

	The following configuration file is used by |apache| to store information about the server and is typically located under the ``/etc/httpd`` path:

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
	     # Silly RHEL, putting things in non-standard locations    
	     TypesConfig /etc/mime.types
	   </IfModule>

	For now, copy it as shown, add it to the ``templates`` directory, name the file ``httpd.conf.erb``.

 .. revealjs:: instance_name and port Variables

	The two variables in that template are ``<%= @instance_name %>`` and ``<%= @port %>``. They will be

	* Declared as properties of the custom resource
	* Defined as variables in a |resource template| resource block within the custom resource (using the ``variables`` property)
	* Tunable from a recipe when using ``port`` and ``instance_name`` as properties in the recipe. (Note that ``instance_name`` will default to ``'name'`` when not specified as a property.)

 .. revealjs:: httpd.service.erb

	The following configuration file tells the |chef client| how to start (``ExecStart``), stop (``ExecStop``), and reload (``ExecReload``) the |apache| |httpd| service:

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

	For now, copy it as shown, add it to the ``templates`` directory, name it ``httpd.service.erb``.




 .. revealjs:: Define Properties
    :noheading:

    .. image:: ../../images/custom_resources_02.svg

 .. revealjs:: Define Properties

	This custom resource requires two custom properties:

	* ``instance_name``
	* ``port``

	Custom properties are tunable when they are declared in a recipe. Note also that both of these properties are defined as variables in the ``httpd.conf.erb`` file. A |resource template| block below will tell the |chef client| how to handle those variables.

 .. revealjs:: Define Properties (continued)

	In the custom resource, add the following custom properties:

	.. code-block:: ruby

	   property :instance_name, String, name_property: true
	   property :port, Fixnum, required: true

	where

	* ``String`` and ``Fixnum`` are |ruby| types (all custom properties must have an assigned |ruby| type)
	* ``name_property: true`` allows the value for this property to be equal to the name of the resource block

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

	where ``:create`` is a value that may be assigned to the ``action`` property for when this resource is used in a recipe. The following sections describe each of the resource blocks that are contained within this action.





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
	    source "httpd.service.erb"
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
	     source "httpd.conf.erb"
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
	     mode '0755'
	     recursive true
	     owner 'root'
	     group 'root'
	     action :create
	   end

 .. revealjs:: service

	Use the |resource service| resource to enable, and then start |httpd|:

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
	       source "httpd.service.erb"
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
	       source "httpd.conf.erb"
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
	       mode '0755'
	       recursive true
	       owner 'root'
	       group 'root'
	       action :create
	     end
   
	     service "httpd-#{instance_name}" do
	       action [:enable, :start]
	     end
	   end




 .. revealjs:: Recipe
    :noheading:

    .. image:: ../../images/custom_resources_05.svg


 .. revealjs:: Add the Resource to a Recipe

	Add the following to the ``default.rb`` recipe in the ``website`` cookbook. The resource name is inferred from the name of the cookbook (``website``) and the name of the recipe (``httpd``), separated by an underscore(``_``): ``website_httpd``.

	.. code-block:: ruby

	   website_httpd 'httpd_site' do
	     port 81
	     action :create
	   end

	which will do the following:

	* Install |apache| |httpd|
	* Assign an instance name of ``httpd_site`` that uses port 81
	* Configures |httpd| using a template
	* Creates the virtual host for the website
	* Starts the |httpd| service




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
