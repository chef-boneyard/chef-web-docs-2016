.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When the |chef private| management server gives the user information about the authentication server, it may return strings like "The AD/LDAP server is down."``" or "Log in using your AD/LDAP credentials". If a different word instead of |windows ad| or |ldap| (such as "corporate") is preferred, modify the system adjective. For example:

.. code-block:: ruby

   ldap['system_adjective'] = 'corporate'