.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When the |chef private| management server gives the user information about the authentication server, it will say things like ``the AD/LDAP server is down`` or ``Log in using your AD/LDAP credentials``. If you’d like to use a different word instead of |microsoft ad| / |ldap| (like Corporate or |microsoft ad|), set the system adjective:

.. code-block:: ruby

   ldap['system_adjective'] = 'corporate'