=====================================================
Create Users
=====================================================

A new user account must be created before using |chef server oec|.

.. note:: If your server is in |microsoft ad| or |ldap| mode, signup is unnecessary and users can simply log in to |chef server oec| using their credentials.

Visiting the |chef server oec| management console will present users with a **Login** page, which contains a **Sign Up** link:

.. image:: ../../images/private_chef_1x_signup1.png

Enter the information on this page, and then click **Submit**.

.. image:: ../../images/private_chef_1x_create_user_click_signup1.png

Once the user account is created, download the private key. This key is used for API access to |chef server oec|. |chef server oec| does not keep a copy of this key, so please store it somewhere safe.

.. image:: ../../images/private_chef_1x_download_private_key1.png


