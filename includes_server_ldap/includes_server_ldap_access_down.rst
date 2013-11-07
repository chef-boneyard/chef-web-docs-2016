.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In the event that the |windows ad| or |ldap| server goes down or becomes unreachable it is still possible for a user to log into |chef server oec| as long as they have a system recovery password set on their |chef server oec| account.

To set or remove a system recovery password for a user, see the instructions in the |private chef ctl| password section of this guide.

Once a user has a system recovery password, they can log into the system by clicking the System Recovery link found on the right hand side of the login page.

.. image:: ../../images/private_chef_1x_system_recovery_link.png 

Once on the System Recovery page, the user will be asked to enter their username and system recovery password.

.. image:: ../../images/private_chef_1x_system_recovery.png 

Once the user successfully logs in, they will gain access to the system and see the same screens as if |windows ad| or |ldap| were functioning.

If a user does not have a system recovery password enabled for their account (even if they have a system recovery password set) they will be redirected to the login page and a message will be shown stating that they do not have System Recovery enabled and to contact the system administrator.