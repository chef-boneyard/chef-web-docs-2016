.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource directory| resource in a recipe is as follows:

.. code-block:: ruby

   directory "name" do
     attribute "value" # see attributes section below
     ...
     action :action
   end

where 

* ``directory`` tells |chef| to use the ``Chef::Provider::Directory`` provider during the |chef| run
* ``"name"`` is the name and location of the directory
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource directory| resource can work when used in a recipe:

.. code-block:: ruby

   directory "/var/lib/foo" do
     owner "root"
     group "root"
     mode 00644
     action :create
   end

Also, a variable can be used to define the directory, and then that variable can be used within the recipe itself:

.. code-block:: ruby

   node['apache']['dir'] = '/etc/apache2'
   
   directory node['apache']['dir'] do
     owner 'apache'
     group 'apache'
     action :create
   end
