.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``output`` matcher tests the results of the query:

.. code-block:: ruby

   its('output') { should eq(/^0/) }
