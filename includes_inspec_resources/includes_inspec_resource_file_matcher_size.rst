.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``size`` matcher tests if a file's size matches, is greater than, or is less than the specified value. For example, equal:

.. code-block:: ruby

   its('size') { should eq 32375 }

Greater than:

.. code-block:: ruby

   its('size') { should > 64 }

Less than:

.. code-block:: ruby

   its('size') { should < 10240 }
