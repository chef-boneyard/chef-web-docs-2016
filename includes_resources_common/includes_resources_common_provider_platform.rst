.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``Chef::Platform`` class maps providers to platforms (and platform versions). At the beginning of every |chef client| run, |ohai| verifies the ``platform`` and ``platform_version`` attributes on each node. The |chef client| then uses those values to identify the correct provider, build an instance of that provider, identify the current state of the resource, do the specified action, and then mark the resource as updated (if changes were made). 

For example:

.. code-block:: ruby

   directory '/tmp/folder' do
     owner 'root'
     group 'root'
     mode '0755'
     action :create
   end

The |chef client| will look up the provider for the ``directory`` resource, which happens to be ``Chef::Provider::Directory``, call ``load_current_resource`` to create a ``directory["/tmp/folder"]`` resource, and then, based on the current state of the directory, do the specified action, which in this case is to create a directory called ``/tmp/folder``. If the directory already exists, nothing will happen. If the directory was changed in any way, the resource is marked as updated.
