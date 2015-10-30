.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``setting`` matcher tests specific, named settings in the group policy:

.. code-block:: ruby

   its('setting') { should eq 'value' }

where ``'setting'`` is replaced with the full string for the setting. For example: ``Automatically log off users when the logon time expires``.

Use a ``setting`` matcher for each setting to be tested.
