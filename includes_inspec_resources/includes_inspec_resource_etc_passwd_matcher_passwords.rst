.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``passwords`` matcher tests if passwords are

* Encrypted
* Have direct logins disabled, as indicated by an asterisk (``*``)
* In the ``/etc/shadow`` file, as indicated by the letter x (``x``)

For example:

.. code-block:: ruby

   its('passwords') { should eq 'x' }
