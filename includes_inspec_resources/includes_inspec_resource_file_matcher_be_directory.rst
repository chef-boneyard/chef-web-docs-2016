.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_directory`` matcher tests if the file exists as a directory, such as ``/etc/passwd``, ``/etc/shadow``, or ``/var/log/httpd``:

.. code-block:: ruby

   it { should be_directory }
