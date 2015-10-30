.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An ``ntp_conf`` |inspec resource| block declares the synchronization settings that should be tested:

.. code-block:: ruby

   describe ntp_conf('path') do
     its('setting_name') { should eq 'value' }
   end

where

* ``'setting_name'`` is a synchronization setting defined in the ``ntp.conf`` file
* ``('path')`` is the non-default path to the ``ntp.conf`` file
* ``{ should eq 'value' }`` is the value that is expected
