.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

One can test the |chef server| ability to use |windows ad| or |ldap| by translating the ```ldap['']``` parameters into ldapsearch parameters using the following:

.. list-table::
   :widths: 100 100
   :header-rows: 1

   * - LDAP 
     - LDAPsearch
   * - ldap['host'] and ldap['port']
     - -H [provide host and port values]
   * - ldap['bind_dn']
     - -D [provide bind_dn value]
   * - ldap['bind_password']
     - -W ldapsearch will prompt
   * - ldap['base_dn']
     - -b [provide base_dn value]
   * - ldap['login_attribute']
     - Defaults to "SAMAccountName"

Example

#. Login to a Frontend member of the cluster or the Chef Server if using a Standalone.

#. Run the following command, replacing the uppercase placeholders with the proper values for your config:
  
   .. code-block:: bash
      
      $ ldapsearch -LLL -H ldap://HOST:PORT -b 'BASE_DN' -D 'BIND_DN' -W '(LOGIN_ATTRIBUTE=YOUR_LDAP_ACCOUNT_USERNAME)' 

   For example

   .. code-block:: bash
      
      $ ldapsearch -LLL -H ldap://win-ad1.chef.co:389 -b 'OU=Employees,OU=Domain users,DC=opscodecorp,DC=com' -D 'CN=Sean Horn,OU=Employees,OU=Domain users,DC=opscodecorp,DC=com' -W '(sAMAccountName=horns)'

   You should see output similar to the following

   .. code-block:: bash

      $ ldapsearch -LLL -H ldap://win-ad1.chef.co:389 -b 'OU=Employees,OU=Domain users,DC=opscodecorp,DC=com' -D 'CN=Sean Horn,OU=Employees,OU=Domain users,DC=opscodecorp,DC=com' -W '(sAMAccountName=horns)'
      Enter LDAP Password:

      dn: CN=Sean Horn,OU=Employees,OU=Domain users,DC=opscodecorp,DC=com
      objectClass: top
      objectClass: person
      objectClass: organizationalPerson
      objectClass: user
      cn: Sean Horn
      sn: Horn
      c: 0
      givenName: Sean
      distinguishedName: CN=Sean Horn,OU=Employees,OU=Domain users,DC=opscodecorp,DC
       =com      


.. note:: You may need to install the ldapsearch command from an OS distribution package if you cannot find it. Chef Server does not embed this command.
