.. The contents of this file are included in multiple topics.
.. THIS FILE SHOULD NOT BE MODIFIED VIA A PULL REQUEST.

This configuration file has the following settings for ``ldap``:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``ldap['base_dn']``
     - |ldap base_dn| For |windows ad|, this is typically ``cn=users`` and then the domain. For example: ``'OU=Employees,OU=Domain users,DC=example,DC=com'``. Default value: ``nil``.
   * - ``ldap['bind_dn']``
     - |ldap bind_dn| The user the |chef server| will use to perform |ldap| searches. This is often the administrator or manager user. This user needs to have read access to all |ldap| users that require authentication. The |chef server| must do an |ldap| search before any user can log in. Many |windows ad| and |ldap| systems do not allow an anonymous bind. If anonymous bind is allowed, leave the ``bind_dn`` and ``bind_password`` settings blank. If anonymous bind is not allowed, a user with ``READ`` access to the directory is required. This user must be specified as an |ldap| distinguished name similar to ``'CN=user_who_can_search,OU=Employees,OU=Domainusers,DC=example,DC=com'``. Default value: ``nil``.
   * - ``ldap['bind_password']``
     - |ldap bind_password| The password for the user specified by ``ldap['bind_dn']``. Leave this value and ``ldap['bind_dn']`` unset if anonymous bind is sufficient. Default value: ``nil``.
   * - ``ldap['group_dn']``
     - The distinguished name for a group. When set to the distinguished name of a group, only members of that group can log in. This feature filters based on the ``memberOf`` attribute and only works with |ldap| servers that provide such an attribute. In |open ldap|, the ``memberOf`` overlay provides this attribute.
   * - ``ldap['host']``
     - |ldap host| The hostname of the |ldap| or |windows ad| server. Be sure the |chef server| is able to resolve any host names. Default value: ``ldap-server-host``.
   * - ``ldap['login_attribute']``
     - The attribute used when searching for |ldap| users given the provided ``base_dn``. Use to specify the |chef server| user name for an |ldap| user. Default value: ``sAMAccountName``.
   * - ``ldap['port']``
     - |ldap port| The default value is an appropriate value for most configurations. Default value: ``389`` or ``636`` when ``ldap['encryption']`` is set to ``:simple_tls``.
   * - ``ldap['ssl_enabled']``
     - Use to enable |ssl|. Default value: ``false``. Must be ``false`` when ``ldap['tls_enabled']`` is ``true``.

       .. note:: Previous versions of the |chef server| used the ``ldap['ssl_enabled']`` setting to first enable |ssl|, and then the ``ldap['encryption']`` setting to specify the encryption type. These settings are deprecated.
   * - ``ldap['timeout']``
     - Default value: ``60000``.
   * - ``ldap['tls_enabled']``
     - Use to enable TLS. When enabled, communication with the |ldap| server is done via a secure |ssl| connection on a dedicated port. When ``true``, ``ldap['port']`` is also set to ``636``. Default value: ``false``. Must be ``false`` when ``ldap['ssl_enabled']`` is ``true``.

       .. note:: Previous versions of the |chef server| used the ``ldap['ssl_enabled']`` setting to first enable |ssl|, and then the ``ldap['encryption']`` setting to specify the encryption type. These settings are deprecated.

..
.. commented out from previous release, saving just in case
..
..   * - ``ldap['login_attribute']``
..     - |ldap login_attribute| For |windows ad|, this is typically ``sAMAccountName``. For |open ldap|, this is typically ``uid``. Default value: ``sAMAccountName``.
..   * - ``ldap['ssl_enabled']``
..     - |ldap ssl_enabled| Be sure |ssl| is enabled on the |ldap| server and that the ``ldap['port']`` setting is updated with the correct value (often ``636``). Default value: ``false``.
..   * - ``ldap['system_adjective']``
..     - |ldap system_adjective| If a value like "corporate" is used, then the |chef server oec| user interface will display strings like "the corporate login server", "corporate login", or "corporate password." Default value: ``AD/LDAP``.
..
