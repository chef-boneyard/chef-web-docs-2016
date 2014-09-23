=====================================================
Post-Config Options
=====================================================

The following sections describe configuration steps that should be done after the |chef server| is installed.


Active Directory and LDAP
=====================================================
The |chef server| supports using |windows ad| or |ldap|. This allows users to log in to the |chef server| by using their corporate credentials instead of having a separate username and password. To configure the |chef server| to use |windows ad| or |ldap| do the following:

#. Specify the following settings:

   .. include:: ../../includes_config/includes_config_rb_server_settings_ldap.rst

#. Run the following command:
  
   .. code-block:: bash
      
      $ chef-server-ctl reconfigure

At this point, all users should be able to use their |windows ad| or |ldap| usernames and passwords to log in to the |chef server|.