.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_symlink`` matcher tests if the file exists as a symbolic, or soft link that contains an absolute or relative path reference to another file:

.. code-block:: ruby

   it { should be_symlink }
