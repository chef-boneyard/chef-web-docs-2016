.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``link_path`` matcher tests if the file exists at the specified path:

.. code-block:: ruby

   its('link_path') { should eq '/some/path/to/file' }
