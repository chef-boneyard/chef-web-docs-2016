.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Encrypting a data bag item requires a secret key. A secret key can be created in any number of ways. For example, |open ssl| can be used to generate a random number, which can then be used as the secret key:

.. code-block:: bash

   $ openssl rand -base64 512 | tr -d '\r\n' > encrypted_data_bag_secret

where ``encrypted_data_bag_secret`` is the name of the file which will contain the secret key. For example, to create a secret key named "my_secret_key":

.. code-block:: bash

   $ openssl rand -base64 512 | tr -d '\r\n' > my_secret_key

The ``tr`` command eliminates any trailing line feeds. Doing so avoids key corruption when transferring the file between platforms with different line endings.
