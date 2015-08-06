.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``new_resource`` method is used to represent a resource as loaded by the |chef client| during the |chef client| run. In other words: what the resource should be. The |chef client| compares the resource as it exists on the node to the resource that is created during the |chef client| run to determine what steps need to be taken to bring the resource into the desired state.

For example:

.. code-block:: ruby

   action :delete do 
    if exists?
      if ::File.writable?(new_resource.path)
        Chef::Log.info('Deleting #{new_resource} at #{new_resource.path}')
        ::File.delete(new_resource.path)
        new_resource.updated_by_last_action(true)
      else
        raise 'Cannot delete #{new_resource} at #{new_resource.path}!'
      end
    end
  end

where the |chef client| checks to see if the file exists, then if the file is writable, and then attempts to delete the resource. ``path`` is an attribute of the new resource that is defined by the lightweight resource.
