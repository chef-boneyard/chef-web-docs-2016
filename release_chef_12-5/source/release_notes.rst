=====================================================
Release Notes: |chef client| 12.5
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

What's New
=====================================================
The following items are new for |chef client| 12.5 and/or are changes from previous versions. The short version:

* **Rename "resource attributes" to "resource properties"** One of the outcomes of `RFC-054 <https://github.com/chef/chef-rfc/blob/master/rfc054-resource-attribute-improvements.md>`__ is that |company_name| will be more clear about what a node attribute is versus a resource property. In previous releases of |chef|, resource properties are referred to as attributes. Starting with |chef client| 12.5 (and retroactively updated for all previous releases of the docs), "resource attributes" will now be referred to as "resource properties". This is a semantic change in the docs that makes it more clear for everyone---they should have been called "resource properties" originally---but otherwise does not change any workflows or break anything.
* **ps_credential helper to embed usernames and passwords** Use the ``ps_credential`` helper to embed a ``PSCredential`` object---security credentials, such as a user name or password---in a script defined by the |resource dsc_script| resource.
* **The terms LWRP and HWRP are deprecated** The new way to refer to creating a custom resource is "custom resource" and the acronyms LWRP ("lightweight resource provider") and HWRP ("heavyweight resource provider") are deprecated. They are older, legacy terms that refer to specific ways of building custom resources. The current version of |chef| supports the older lightweight/heavyweight approaches, but adds additional ways of building custom resources.
* **New way to build custom resources** The process for extending the built-in collection of resources in |chef| has been simplified. It is defined only in the ``/resources`` directory using a simplified syntax that easily leverages the built-in collection of resources. The ``/providers`` directory is no longer required.

.. https://github.com/chef/chef/pull/3776#issuecomment-135525399


``ps_credential`` Helper
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_dsc_script_helper_ps_credential.rst

Custom Resources
-----------------------------------------------------
The |chef client| 12.5 release includes a way of extending the built-in collection of resources. This process has been simplified and uses only the ``/resources`` directory with a syntax that easily leverages the built-in collection of resources. The ``/providers`` directory is no longer required. 

For example, |chef| does not include a resource named ``website``, which (if it existed) could be used to install and configure a web server, manage related configuration files, deploy SSL certificates, and so on.

A custom resource is defined in a file that is located in the ``/resources`` directory in a cookbook. This file

* Declares the properties of the custom resource
* Loads current properties, if the resource already exists
* Defines each action the custom resource may take

Once built, the custom resource may be used in a recipe just like the built-in collection of resources. The resource gets its name from the cookbook and from the file name in the ``/resources`` directory, with an underscore (``_``) separating them. For example, a cookbook named ``acmeco`` with a custom resource named ``website.rb`` is used in a recipe like this:

.. code-block:: ruby

   acmeco_website 'name' do
     # some properties
     # an action
   end


Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
A custom resource declares properties, defines current properties to be loaded (if any), and one (or more) actions. The syntax for a custom resource is. For example:

.. code-block:: ruby

   property :name, RubyType, default: 'value'

   load_current_value do
     # some Ruby
   end

   action :name do
    # a mix of built-in Chef resources and Ruby
   end


Example
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For example, the ``website.rb`` file in the ``acmeco`` cookbook could be similar to:

.. code-block:: ruby

   property :homepage, String, default: '<h1>Hello world!</h1>'

   load_current_value do
     if File.exist?('/var/www/html/index.html')
       homepage IO.read('/var/www/html/index.html')
     end
   end

   action :create do
     package 'httpd'

     service 'httpd' do
       action [:enable, :start]
     end

     file '/var/www/html/index.html' do
       content homepage
     end
   end

where

* ``homepage`` is a property that sets the default HTML for the ``index.html`` file with a default value of ``'<h1>Hello world!</h1>'``
* the ``load_current_value`` block loads the current values for all specified properties, in this example there is just a single property: ``homepage``
* the ``if`` statement checks to see if the ``index.html`` file is already present on the node. If that file is already present, its contents are loaded **instead** of the default value for ``homepage`` 
* the ``action`` block uses the built-in collection of resources to tell the |chef client| how to install Apache, start and enable the ``httpd`` service, and then create the contents of the file located at ``/var/www/html/index.html``

The resulting ``acmeco_website`` resource may now be used in a recipe like this:

.. code-block:: ruby

   acmeco_website 'httpd' do
     homepage '<h1>Welcome to the Acme Co. website!</h1>'
     action: create
   end



Changelog
=====================================================
https://github.com/chef/chef/blob/master/CHANGELOG.md
