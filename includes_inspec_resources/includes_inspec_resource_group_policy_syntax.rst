.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``group_policy`` |inspec resource| block declares the path to the policy:

.. code-block:: ruby

   describe group_policy('Path\to\Policy') do
     its('setting') { should eq 'value' }
   end

where

* ``'Path\to\Policy'`` must specify a group policy, such as ``'Local Policies\Audit Policy'`` or ``'Local Policies\Security Options'``
* ``'setting'`` is the group policy setting to be tested. For example: ``Automatically log off users when the logon time expires``
* ``'value'`` is compared to the value on the group policy
