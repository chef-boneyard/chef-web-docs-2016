.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_file`` matcher tests if the file exists as a file. This can be useful with configuration files like ``/etc/passwd`` where there typically is not an associated file extension---``passwd.txt``:

.. code-block:: ruby

   it { should be_file }
