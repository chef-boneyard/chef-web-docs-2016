=====================================================
User Management
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.opscode.com/server/.

The following tasks are available for user management in |chef private|:

* Creating users
* Editing a user's profile
* Changing a password
* Recovering a password
* Regenerating a private key
* Viewing a user's profile

Change Password
=====================================================
If other password recovery methods are not working for a user, an administrator can set that user's password by logging on to the |chef private| box and running ``private-chef-ctl password``:

.. code-block:: bash

   $ private-chef-ctl password adamjacobs
   Enter the new password:  ******
   Enter the new password again:  ******
   Password for adamjacobs successfully set.

.. note:: In |windows ad| or |ldap| mode, this sets the user’s System Recovery password.

Create User
=====================================================
Visiting the |chef private| |chef manage| user interface will present the login page, which contains a **Sign Up** link:

.. image:: ../../images_private_chef/private_chef_1x_signup.png

Complete the information on the sign-up page, and then click **Submit**.

.. image:: ../../images_private_chef/private_chef_1x_create_user_click_signup.png

Once the user is created, download the private key. The private key is used for API access to |chef private|. |chef private| does not keep a copy of this key, so store it somewhere safe.

.. image:: ../../images_private_chef/private_chef_1x_download_private_key.png

.. note:: If the |chef private| server is in |windows ad| or |ldap| mode, signup is unnecessary; log in to |chef private| using |windows ad| or |ldap| credentials.

Edit Profile
=====================================================
Clicking the **Edit** link on the user profile page will allow any user to modify their profile.

.. image:: ../../images_private_chef/private_chef_1x_user_profile_edit_link.png

From here the following details can be modified:

* First, middle, and last names
* Email address
* Password

Recover Password
=====================================================
If the |chef private| password is forgotten or lost, it can be reset by clicking the **Forgot your password?** link on the login page. After entering the user account name, an email will be sent to that contains a link that can be used to reset a password.

.. image:: ../../images_private_chef/private_chef_1x_forgot_password.png

.. note:: This does not apply to |windows ad| or |ldap|.

Regenerate Private Key
=====================================================
Each user account on a |chef private| server has a private key that allows them API access to |chef private|. The |chef private| server does not store a copy of this key. If you misplace this key, it must be regenerated in order to restore API access for that user. This key can be regenerated from each user's profile page. Only the user for each account can regenerate their private key.

.. image:: ../../images_private_chef/private_chef_1x_regenerate_private_key.png

View Profile
=====================================================
From any point within the |chef manage| user interface, you may visit your user profile page. Just click the user name in the upper right portion of the screen.

.. image:: ../../images_private_chef/private_chef_1x_user_profile_click_me.png
