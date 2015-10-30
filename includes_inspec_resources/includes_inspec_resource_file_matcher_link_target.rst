.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``link_target`` matcher tests if a file that is linked to this file exists at the specified path:

.. code-block:: ruby

   its('link_target') { should eq '/some/path/to/file' }
