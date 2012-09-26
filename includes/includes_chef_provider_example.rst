.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A lightweight resource named ``database.rb`` should be created and located in the ``resources/`` folder of a cookbook. This resource will define the actions for creating and deleting a |mysql| database:

.. code-block:: ruby

   actions :create, :delete
   
   attribute :name, :kind_of => String, :name_attribute => true
   attribute :type, :kind_of => String

A lightweight provider named ``mysql.rb`` should be created in the ``providers/`` folder of the same cookbook. This provider will define the steps required to take the actions that are defined by the resource. For example:

.. code-block:: ruby

   action :create do
     execute "create database" do
       not_if "mysql -e 'show databases;' | grep #{new_resource.name}"
       command "mysqladmin create #{new_resource.name}"
     end
   end
    
   action :delete do
     execute "delete database" do
       only_if "mysql -e 'show databases;' | grep #{new_resource.name}"
       command "mysqladmin drop #{new_resource.name}"
     end
   end

If the name of the cookbook was ``opscode``, then the short name of the provider that is created is ``opscode_mysql``, where the name of the cookbook and the name of the provider are joined with an underscore to comprise the name of the provider. The ``load_current_resource`` method will do nothing (since it is not defined) and the ``action_create`` and ``action_delete`` methods are available for use in a recipe. For example:

.. code-block:: ruby

   opscode_database "database" do
     type "innodb"
     action :create
     provider "opscode_mysql"
   end

This resource will execute the ``action :create do`` block in the provider (above) and would create a |mysql| database called "database".
