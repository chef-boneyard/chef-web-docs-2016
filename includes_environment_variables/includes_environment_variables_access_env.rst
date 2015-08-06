.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Another method is to use the |ruby| predefined ``ENV`` variable to set the environment variable. This ensures that any child processes (including the service that a resource may be starting) have this value in their environment. While not technically a |ruby hash|, ``ENV`` can be manipulated as if it were. For example:

.. code-block:: ruby

   ENV['IMPORTANT_VAR'] = 'value'
   
   # Some service that requires IMPORTANT VAR
   service 'example_service' do
     action :start
   end

.. note:: Changes made to ``ENV`` only effect the environment of the |chef client| process and child processes. Altering the environment in this way will often ensure that the |chef client| can start a service properly, but will not ensure that a service will start properly when started using other methods.
