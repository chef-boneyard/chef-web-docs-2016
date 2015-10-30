.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``name`` matcher tests the value of ``name`` as read from ``ssh_config`` versus the value declared in the test:

.. code-block:: ruby

   its('name') { should eq 'foo' }

or:

.. code-block:: ruby

   it's('name') { should include('bar') }
