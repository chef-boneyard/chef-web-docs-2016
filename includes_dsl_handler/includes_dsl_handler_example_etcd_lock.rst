.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example shows how to prevent concurrent |chef client| runs from both holding a lock on |etcd|:

.. code-block:: ruby

   lock_key = "#{node.chef_environment}/#{node.name}"
   
   Chef.event_handler do
     on :converge_start do |run_context|
       Etcd.lock_acquire(lock_key)
     end
   end
   
   Chef.event_handler do
     on :converge_complete do
       Etcd.lock_release(lock_key)
     end
   end
