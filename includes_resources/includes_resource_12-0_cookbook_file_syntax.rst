.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource cookbook_file| resource block manages files by using files that exist within a cookbook's ``/files`` directory. For example, to write the home page for an |apache| website:

.. code-block:: ruby

   cookbook_file '/var/www/customers/public_html/index.php' do
     source 'index.php'
     owner 'web_admin'
     group 'web_admin'
     mode '0644'
     action :create
   end

where

* ``'/var/www/customers/public_html/index.php'`` is path to the file to be created
* ``'index.php'`` is a file in the ``/files`` directory in a cookbook that is used to create that file (the contents of the file in the cookbook will become the contents of the file on the node)
* ``owner``, ``group``, and ``mode`` define the permissions

The full syntax for all of the attributes that are available to the |resource cookbook_file| resource is:

.. code-block:: ruby

   cookbook_file 'name' do
     atomic_update              TrueClass, FalseClass
     backup                     FalseClass, Integer
     cookbook                   String
     force_unlink               TrueClass, FalseClass
     group                      String, Integer
     inherits                   TrueClass, FalseClass
     manage_symlink_source      TrueClass, FalseClass, NilClass
     mode                       String, Integer
     notifies                   # see description
     owner                      String, Integer
     path                       String # defaults to 'name' if not specified
     provider                   Chef::Provider::CookbookFile
     rights                     Hash
     source                     String, Array
     action                     Symbol # defaults to :create if not specified
   end

where 

* ``cookbook_file`` is the resource
* ``name`` is the name of the resource block
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``atomic_update``, ``backup``, ``cookbook``, ``force_unlink``, ``group``, ``inherits``, ``manage_symlink_source``, ``mode``, ``owner``, ``path``, ``provider``, ``rights``, and ``source`` are attributes of this resource, with the |ruby| type shown. |see attributes|
