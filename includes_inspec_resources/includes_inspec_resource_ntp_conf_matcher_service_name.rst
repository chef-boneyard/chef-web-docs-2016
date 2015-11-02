.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |inspec resource| matches any service that is listed in the ``ntp.conf`` file:

.. code-block:: ruby

   its('server') { should_not eq nil }

or:

.. code-block:: ruby

   its('restrict') { should include '-4 default kod notrap nomodify nopeer noquery'}

For example:

.. code-block:: ruby

   describe ntp_conf do
     its('server') { should_not eq nil }
     its('restrict') { should include '-4 default kod notrap nomodify nopeer noquery'}
   end
