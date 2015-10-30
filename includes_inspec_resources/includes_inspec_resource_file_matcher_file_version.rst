.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``file_version`` matcher tests if the file's version matches the specified value. The difference between a file's "file version" and "product version" is that the file version is the version number of the file itself, whereas the product version is the version number associated with the application from which that file originates:

.. code-block:: ruby

   its('file_version') { should eq '1.2.3' }
