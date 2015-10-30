.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``auditd_conf`` |inspec resource| block declares configuration settings that should be tested:

.. code-block:: ruby

   describe auditd_conf('path') do
     its('keyword') { should eq 'value' }
   end

where

* ``'keyword'`` is a configuration setting defined in the ``auditd.conf`` configuration file
* ``('path')`` is the non-default path to the ``auditd.conf`` configuration file
* ``{ should eq 'value' }`` is the value that is expected
