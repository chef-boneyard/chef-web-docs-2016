.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``mysql_conf`` |inspec resource| block declares one (or more) settings in the ``my.cnf`` file, and then compares the setting in the configuration file to the value stated in the test:

.. code-block:: ruby

   describe mysql_conf('path') do
     its('setting') { should eq 'value' }
   end

where

* ``'setting'`` specifies a setting in the ``my.cnf`` file, such as ``max_connections``
* ``('path')`` is the non-default path to the ``my.cnf`` file
* ``should eq 'value'`` is the value that is expected
