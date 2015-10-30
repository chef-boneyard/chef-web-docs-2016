.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_readable`` matcher tests if the file is readable:

.. code-block:: ruby

   it { should be_readable }

The ``be_readable`` matcher may also test if the file is readable by a specific owner, group, or user. For example, a group:

.. code-block:: ruby

   it { should be_readable.by('group') }

an owner:

.. code-block:: ruby

   it { should be_readable.by('owner') }

a user:

.. code-block:: ruby

   it { should be_readable.by_user('user') }
