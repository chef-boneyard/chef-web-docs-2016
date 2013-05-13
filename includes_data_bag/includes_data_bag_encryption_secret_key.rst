.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Encrypting a data bag requires a secret key. A secret key can be created in any number of ways. For example, |open ssl| can be used to generate a random number, which can then be used as the secret key:

.. code-block:: bash

   $ openssl rand -base64 512 > encrypted_data_bag_secret

where ``encrypted_data_bag_secret`` is the name of the file which will contain the secret key. For example, to create a secret key named "my_secret_key":

.. code-block:: bash

   $ openssl rand -base64 512 > my_secret_key

and then to use it to encrypt a data bag item named "my_password" located in a data bag named "production":

.. code-block:: bash

   $ knife data bag create --secret-file ./secret_key production my_password

This will open the |json| editor:

.. code-block:: javascript

   {
     "id": "passwords",
     "mysql": "open-sesame-123",
     "rabbitmq": "open-queue-123"
   }

To view the data bag item without decryption, enter the following:

.. code-block:: bash

   $ knife data bag show production passwords

to return something similar to:

.. code-block:: bash

   id:        passwords
   mysql:     xtSxLvqHqPP1gHsqP5SlytFtDIfpWMJebJ2aZPd0mGU=
   rabbitmq:  wVcK/OboqpRcfF5fOKlEHKz2ev7CxSrBsoCwWo9Jcko=

and then to view the same data bag item, but with decryption:

.. code-block:: bash

   $ knife data bag show --secret-file=./secret_key production passwords

to return something similar to:

.. code-block:: bash

   id:        passwords
   mysql:     open-sesame-123
   rabbitmq:  open-queue-123
