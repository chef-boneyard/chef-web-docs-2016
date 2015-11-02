.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``os`` |inspec resource| block declares the platform to be tested:

.. code-block:: ruby

   describe os['family'] do
     it { should eq 'platform' }
   end

where

* ``'platform'`` is one of ``bsd``, ``debian``, ``linux``, ``redhat``, ``solaris``, ``suse``,  ``unix``, or ``windows``
