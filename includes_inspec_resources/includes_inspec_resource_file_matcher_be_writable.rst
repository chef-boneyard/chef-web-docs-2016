.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_writable`` matcher tests if the file is writable:

.. code-block:: ruby

   it { should be_writable }

The ``be_writable`` matcher may also test if the file is writable by a specific owner, group, or user. For example, a group:

.. code-block:: ruby

   it { should be_writable.by('group') }

an owner:

.. code-block:: ruby

   it { should be_writable.by('owner') }

a user:

.. code-block:: ruby

   it { should be_writable.by_user('user') }
