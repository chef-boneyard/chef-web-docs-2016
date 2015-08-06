.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

On the |chef server| machine create the |user pem| from the command line using |chef server ctl|. Run the following command:

.. code-block:: bash

   $ chef-server-ctl user-create USER_NAME FIRST_NAME LAST_NAME EMAIL PASSWORD -f FILE_NAME

where

* |key user_create| For example: ``/tmp/grantmc.key``.

For example, a user named ``grantmc``, with a first and last name of ``Grant McLennan``, an email address of ``grantmc@chef.io``, a poorly-chosen password, and with the |user pem| file saved to ``/tmp/grantmc.key``:

.. code-block:: bash

   $ chef-server-ctl user-create grantmc Grant McLennan grantmc@chef.io p@s5w0rD! -f /tmp/grantmc.key
