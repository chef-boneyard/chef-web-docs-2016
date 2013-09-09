.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This configuration file has the following settings for |ldap|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ldap['base_dn']``
     - The root |ldap| node that contains all users, i.e. the node under which all other nodes exist in the directory structure. For |microsoft ad|, this is typically ``cn=users`` and then the domain. Default value: ``nil``.
   * - ``ldap['bind_dn']``
     - The distinguished name used to bind to the |ldap| server. This is typically, but not necessarily, the administrator or manager user. This user needs to have read access to all |ldap| users that require authentication. |chef server oec| must do an |ldap| search before any user can log in. Many |microsoft ad| and |ldap| systems do not allow an anonymous bind. If anonymous bind is allowed, leave the ``bind_dn`` setting blank. If anonymous bind is not allowed, a user with ``READ`` access to the directory is required. This user must be specified as an |ldap| distinguished name similar to ``'cn=user_name,dc=domain_name,dc=com'``. Default value: ``nil``.
   * - ``ldap['bind_password']``
     - The password for the binding user. Leave this value unset if anonymous bind is sufficient. Default value: ``nil``.
   * - ``ldap['host']``
     - The name (or IP address) of the |ldap| server. Be sure the |chef server oec| is able to resolve any host names. Default value: ``nil``.
   * - ``ldap['login_attribute']``
     - The |ldap| attribute that holds the user's login name. For |microsoft ad|, this is typically ``sAMAccountName``. For |open ldap|, this is typically ``uid``. Default value: ``sAMAccountName``.
   * - ``ldap['port']``
     - The port on which the |ldap| server listens. The default value is an appropriate value for most configurations. Default value: ``389``.
   * - ``ldap['ssl_enabled']``
     - Indicates that |chef server oec| should make |ssl|-enabled conenctions to the |ldap| server. Be sure |ssl| is enabled on the |ldap| server and that the ``ldap['port']`` setting is updated with the correct value (often ``636``). Default value: ``false``.
   * - ``ldap['system_adjective']``
     - A descriptive name for the login system that is displayed to users in the |chef server oec| management console. If a value like "corporate" is used, then the |chef server oec| user interface will display strings like "the corporate login server", "corporate login", or "corporate password." Default value: ``AD/LDAP``.

