.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for |ldap|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ldap['host']``
     - Name (or IP address) of your LDAP server. Be sure that your Private Chef server can resolve any host names. Default value: ``nil``. For example:
       ::

          ldap['host'] = '1.2.3.4'

   * - ``ldap['port']``
     - The port your LDAP server listens on.  The default value of ``389`` is good enough for most installs.Default value: ``389``. For example:
       ::

          ldap['port'] = '389'

   * - ``ldap['ssl_enabled']``
     - Indicates if Private Chef should make SSL-enabled conenctions to the LDAP server. Be sure SSL is enabled on your LDAP server and ``ldap['port']`` has been updated with the correct value (usually ``636``). Default value: ``false``. For example:
       ::

          ldap['ssl_enabled'] = true

   * - ``ldap['bind_dn']``
     - The distinguished name used to bind to the LDAP server. This is typically, but not necessarily, the administrator or manager user. This user needs to have read access to all LDAP users you hope to authenticate. Leave this value unset if anonymous bind is sufficient. Default value: ``nil``. For example:
       ::

          ldap['bind_dn'] = 'cn=bofh,dc=opscode,dc=com'

   * - ``ldap['bind_password']``
     - The password for the binding user set by ``ldap['bind_password']`` Leave this value unset if anonymous bind is sufficient. Default value: ``nil``. For example:
       ::

          ldap['bind_password'] = 'supersecret'

   * - ``ldap['base_dn']``
     - The LDAP root node, the top entry (starting point) in the directory. Default value: ``nil``. For example:
       ::

          ldap['base_dn'] = 'cn=users,dc=opscode,dc=com'

   * - ``ldap['login_attribute']``
     - The LDAP attribute holding the user's login name. Typically in Active Directory it will be ``sAMAccountName``, while in OpenLDAP it is ``uid``. Default value: ``sAMAccountName``. For example:
       ::

          ldap['login_attribute'] = 'sAMAccountName'

   * - ``ldap['system_adjective']``
     - A descriptive name for your login system that will displayed to users in the Private Chef management console.  If you enter "corporate," for example, the webui will talk about things like "the corporate login server", "corporate login" and "corporate password." Default value: ``AD/LDAP``. For example:
       ::

          ldap['system_adjective'] = 'corporate'

