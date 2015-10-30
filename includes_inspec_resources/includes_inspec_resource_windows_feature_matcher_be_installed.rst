.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``be_installed`` matcher tests if the named |windows| feature is installed:

.. code-block:: ruby

   it { should be_installed }

If the feature is installed, the ``Get-WindowsFeature`` cmdlet is run and the name, display name, description, and install state is returned as a |json| object.
