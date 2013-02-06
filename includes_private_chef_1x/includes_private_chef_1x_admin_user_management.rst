.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

User Management


User Creation

Visiting the |chef private| management console will present you with a Login page, which contains a Sign Up link:

.. image:: ../../images/private_chef_10x_signup


Enter your information on the signup page, and click Submit.

.. image:: ../../images/private_chef_10x_create_user_click_signup


Once your user is created, you will have the opportunity to download your private key - download it now. This key is used for API access to |chef private|. |chef private| does not keep a copy of this key, so please store it somewhere safe.

.. image:: ../../images/private_chef_10x_download_private_key

Note
If your server is in Active Directory/LDAP mode, signup is unnecessary and you can simply log in to |chef private| using your credentials.



User Profile

From any point within the Management Console, you may visit your user profile page. Just click your username in the upper right portion of the screen.

.. image:: ../../images/private_chef_10x_user_profile_click_me


You will then be shown details about your account:


Editing your User Profile

Clicking the Edit link on the user profile page will allow you to modify your user profile.

.. image:: ../../images/private_chef_10x_user_profile_edit_link

From here you can change:

* Your first, middle, and last name.
* Email Address
* Password


Regenerating Your Private Key

Each user account on a |chef private| server has a private key that allows them API access to |chef private|. The |chef private| server does not store a copy of this key. If you misplace this key, you will need to regenerate it in order to restore API access for your user. You can regenerate this key from your user profile page. You are not permitted to regenerate a key for a user account that is not your own.

.. image:: ../../images/private_chef_10x_regenerate_private_key



Password Recovery

If you happen to forget or lose your |chef private| password, you can request a password reset by clicking the Forgot your password? link on the login page at any time. After entering your |chef private| user name on the following page, an email will be sent to you containing the link needed to reset your password.

.. image:: ../../images/private_chef_10x_forgot_password

Note
This does not apply to Active Directory/LDAP.


Changing a User’s Password

If other password recovery methods are not working for a user, an administrator can set their password by logging on to the |chef private| box and running ``private-chef-ctl password``:

.. code-block:: bash

   $ private-chef-ctl password adamjacobs
   Enter the new password:  ******
   Enter the new password again:  ******
   Password for adamjacobs successfully set.

Note
In Active Directory/LDAP mode, this sets the user’s System Recovery Password.


