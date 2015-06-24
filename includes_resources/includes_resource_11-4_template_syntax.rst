.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for the attributes that are available to the |resource template| resource is:

.. code-block:: ruby

   template 'name' do
     backup                     integer
     cookbook                   'string'
     group                      'string'
     inherits                   true
     local                      false
     mode                       'string'
     owner                      'string'
     path                       'string'  # defaults to 'name' if not specified
     provider                   Chef::Provider::File::Template
     rights                     Hash
     source                     'string' or [ array ]  # filename.erb
     variables                  Hash
     action                     :action
   end

where 

* ``template`` is the resource
* ``name`` is the name of the resource block, typically the path to the location in which a file is created *and also* the name of the file to be managed. For example: ``/var/www/html/index.html``, where ``/var/www/html/`` is the fully qualified path to the location and ``index.html`` is the name of the file
* ``source`` is the template file that will be used to create the file on the node, for example: ``index.html.erb``; the template file is located in the ``/templates`` directory of a cookbook
* ``:action`` identifies the steps the |chef client| will take to bring the node into the desired state
* ``backup``, ``cookbook``, ``group``, ``inherits``, ``local``, ``mode``, ``owner``, ``path``, ``provider``, ``rights``, ``source``, and ``variables``, are attributes of this resource, with example values shown. |see attributes|

**Example**

.. code-block:: ruby

   template '/dev/null' do
     source 'source.erb'
     owner 'root'
     group 'root'
     mode '0644'
   end


