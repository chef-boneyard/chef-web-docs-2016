.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In the event that the Active Directory / LDAP server goes down or becomes unreachable it is still possible for users to log into |chef private| provided they have a System Recovery password set on their |chef private| account.

To set or remove a System Recovery password for a user, see the instructions in the |private chef ctl| password section of this guide.

Once a user has a System Recovery password, they can log into the system by clicking the System Recovery Link found on the right hand side of the login page.

.. image:: ../../images/private_chef_1x_system_recovery_link.png 

Once on the System Recovery Page, the user will be asked to enter their username and System Recovery password.

.. image:: ../../images/private_chef_1x_system_recovery.png 

Once the user successfully logs in, they will gain access to the system and see the same screens as if Active Directory / LDAP were functioning.

If the user does not have System Recovery enabled for their account (even if they have a System Recover password set) they will be redirected to the login page and a message will be shown stating that they do not have System Recovery enabled and to contact the system administrator.