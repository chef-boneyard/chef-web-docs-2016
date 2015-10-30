.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This |inspec resource| matches any service that is listed in the ``inetd.conf`` file:

.. code-block:: ruby

     its('shell') { should eq nil }

or:

.. code-block:: ruby

     its('netstat') { should eq nil }

or:

.. code-block:: ruby

     its('systat') { should eq nil }

For example:

.. code-block:: ruby

   describe inetd_conf do
     its('shell') { should eq nil }
     its('login') { should eq nil }
     its('exec') { should eq nil }
   end
