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
     - |ldap bind_dn| This is often the administrator or manager user. This user needs to have read access to all |ldap| users that require authentication. |chef server oec| must do an |ldap| search before any user can log in. Many |windows ad| and |ldap| systems do not allow an anonymous bind. If anonymous bind is allowed, leave the ``bind_dn`` setting blank. If anonymous bind is not allowed, a user with ``READ`` access to the directory is required. This user must be specified as an |ldap| distinguished name similar to ``'CN=user_who_can_search,OU=Employees,OU=Domain users,DC=example,DC=com'``. Default value: ``nil``.
   * - ``ldap['bind_password']``
     - |ldap bind_password| Leave this value unset if anonymous bind is sufficient. Default value: ``nil``.
   * - ``ldap['enable_ssl']``
     - Use to enable |ssl|. Default value: ``false``.

       .. note:: Previous versions of the |chef server| used the ``ldap['ssl_enabled']`` setting to first enable |ssl|, and then the ``ldap['encryption']`` setting to specify the encryption type. The ``ldap['ssl_enabled']`` and ``ldap['encryption']`` settings are deprecated.
   * - ``ldap['enable_tls']``
     - Use to enable TLS. When enabled, communication with the |ldap| server is done via a secure |ssl| connection on a dedicated port. When ``true``, ``ldap['port']`` is also set to ``636``. Default value: ``false``.

       .. note:: Previous versions of the |chef server| used the ``ldap['ssl_enabled']`` setting to first enable |ssl|, and then the ``ldap['encryption']`` setting to specify the encryption type. The ``ldap['ssl_enabled']`` and ``ldap['encryption']`` settings are deprecated.
   * - ``ldap['host']``
     - |ldap host| Be sure the |chef server oec| is able to resolve any host names. Default value: ``ldap-server-host``.
   * - ``ldap['login_attribute']``
     - Use to specify the |chef server| user name for an |ldap| user.
   * - ``ldap['port']``
     - |ldap port| The default value is an appropriate value for most configurations. Default value: ``389`` or ``636`` when ``ldap['encryption']`` is set to ``:simple_tls``.
   * - ``ldap['timeout']``
     - Default value: ``60000``.


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
