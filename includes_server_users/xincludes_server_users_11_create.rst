.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Visiting the |chef manage| add-on for |chef server oec| will present the login page, which contains a **Sign Up** link:

.. image:: ../../images/server_users_signup.png

Complete the information on the sign-up page, and then click **Submit**.

.. image:: ../../images/server_users_signup_click.png

Once the user is created, download the private key. The private key is used for API access to |chef server oec|. |chef server oec| does not keep a copy of this key, so store it somewhere safe.

.. image:: ../../images/server_users_download_private_key.png

.. note:: If the |chef private| server is in |windows ad| or |ldap| mode, signup is unnecessary; log in to |chef private| using |windows ad| or |ldap| credentials.
