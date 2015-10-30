.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``os_env`` |inspec resource| block declares an environment variable, and then declares its value:

.. code-block:: ruby

   describe os_env('VARIABLE') do
     its('matcher') { should eq 1 }
   end

where

* ``('VARIABLE')`` must specify an environment variable, such as ``PATH``
* ``matcher`` is a valid matcher for this InSpec resource
