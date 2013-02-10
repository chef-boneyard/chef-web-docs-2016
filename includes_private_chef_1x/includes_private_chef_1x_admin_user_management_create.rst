.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Visiting the |chef private| |management console| will present the login page, which contains a **Sign Up** link:

.. image:: ../../images/private_chef_1x_signup.png

Complete the information on the sign-up page, and then click **Submit**.

.. image:: ../../images/private_chef_1x_create_user_click_signup.png

Once the user is created, download the private key. The private key is used for API access to |chef private|. |chef private| does not keep a copy of this key, so store it somewhere safe.

.. image:: ../../images/private_chef_1x_download_private_key.png

.. note:: If the |chef private| server is in |microsoft ad| or |ldap| mode, signup is unnecessary; log in to |chef private| using |microsoft ad| or |ldap| credentials.
