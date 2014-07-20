=====================================================
Create Users
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.opscode.com/server/.

A new user account must be created before using |chef private|.

.. note:: If your server is in |windows ad| or |ldap| mode, signup is unnecessary and users can simply log in to |chef private| using their credentials.

Visiting the |chef private| management console will present users with a **Login** page, which contains a **Sign Up** link:

.. image:: ../../images_private_chef/private_chef_1x_signup1.png

Enter the information on this page, and then click **Submit**.

.. image:: ../../images_private_chef/private_chef_1x_create_user_click_signup1.png

Once the user account is created, download the private key. This key is used for API access to |chef private|. |chef private| does not keep a copy of this key, so please store it somewhere safe.

.. image:: ../../images_private_chef/private_chef_1x_download_private_key1.png



