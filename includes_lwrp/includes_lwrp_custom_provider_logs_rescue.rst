.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``rescue`` clause to make sure that a log message is always provided. For example:

.. code-block:: ruby

   def load_current_resource
     ...
     begin
       ...
     rescue
       Chef::Log.debug('Cannot find #{@new_resource} in the swarm')
     end
     ...
   end
