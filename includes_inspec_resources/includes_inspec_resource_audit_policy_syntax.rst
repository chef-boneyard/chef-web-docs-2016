.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An ``audit_policy`` |inspec resource| block declares a parameter that belongs to an audit policy category or subcategory:

.. code-block:: ruby

   describe audit_policy do
     its('parameter') { should eq 'value' }
   end

where

* ``'parameter'`` must specify a parameter 
* ``'value'`` must be one of ``No Auditing``, ``Not Specified``, ``Success``, ``Success and Failure``, or ``Failure``
