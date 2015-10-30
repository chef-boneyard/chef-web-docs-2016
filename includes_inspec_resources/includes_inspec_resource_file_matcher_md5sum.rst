.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``md5sum`` matcher tests if the |md5| checksum for a file matches the specified value:

.. code-block:: ruby

   its('md5sum') { should eq '3329x3hf9130gjs9jlasf2305mx91s4j' }
