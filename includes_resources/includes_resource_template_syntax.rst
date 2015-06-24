.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for the attributes that are available to the |resource template| resource is:

.. code-block:: ruby

   template 'name' do
     atomic_update              true
     backup                     integer
     cookbook                   'string'
     force_unlink               false
     group                      'string'
     helper(:method)            { "string"} # see Helpers below
     helpers(module)            # see Helpers below
     inherits                   true
     local                      false
     manage_symlink_source nil  # can be true or false
     mode                       'string'
     owner                      'string'
     path                       'string'  # defaults to 'name' if not specified
     provider                   Chef::Provider::File::Template
     rights                     Hash
     sensitive                  false
     source                     'string' or [ array ]  # filename.erb
     variables                  Hash
     verify                     'string' or :symbol
     action                     :action
   end

where 

* ``template`` is the resource
* ``name`` is the name of the resource block, typically the path to the location in which a file is created *and also* the name of the file to be managed. For example: ``/var/www/html/index.html``, where ``/var/www/html/`` is the fully qualified path to the location and ``index.html`` is the name of the file
* ``source`` is the template file that will be used to create the file on the node, for example: ``index.html.erb``; the template file is located in the ``/templates`` directory of a cookbook
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``atomic_update``, ``backup``, ``cookbook``, ``force_unlink``, ``group``, ``helper``, ``helpers``, ``inherits``, ``local``, ``manage_symlink_source``, ``mode``, ``owner``, ``path``, ``provider``, ``rights``, ``sensitive``, ``source``, ``variables``, and ``verify`` are attributes of this resource, with example values shown. |see attributes|

**Example**

.. code-block:: ruby

   template 'name' do
     source 'source.erb'
     owner 'root'
     group 'root'
     mode '0644'
   end
