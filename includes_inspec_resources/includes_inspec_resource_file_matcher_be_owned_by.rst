.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_owned_by`` matcher tests if the file is owned by the named user, such as ``root``:

.. code-block:: ruby

   it { should be_owned_by 'root' }
