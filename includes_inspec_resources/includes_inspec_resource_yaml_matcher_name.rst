.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``name`` matcher tests the value of ``name`` as read from a |yaml| file versus the value declared in the test:

.. code-block:: ruby

   its('name') { should eq 'foo' }
