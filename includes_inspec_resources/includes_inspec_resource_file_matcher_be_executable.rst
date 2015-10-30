.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_executable`` matcher tests if the file exists as an executable:

.. code-block:: ruby

   it { should be_executable }

The ``be_executable`` matcher may also test if the file is executable by a specific owner, group, or user. For example, a group:

.. code-block:: ruby

   it { should be_executable.by('group') }

an owner:

.. code-block:: ruby

   it { should be_executable.by('owner') }

a user:

.. code-block:: ruby

   it { should be_executable.by_user('user') }
