.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An encrypted data bag requires a secret key. The following examples show how to create a secret key using |open ssl|:

.. code-block:: bash

   $ openssl rand -base64 512 > secret_key

and then how to use that secret key to create an encrypted data bag item named "passwords" in a data bag named "prod":

.. code-block:: bash

   $ knife data bag create --secret-file ./secret_key prod passwords

This will open the |json| editor:

.. code-block:: javascript

   {
     "id": "passwords",
     "mysql": "open-sesame-123",
     "rabbitmq": "open-queue-123"
   }

To view the data bag item without decryption, enter the following:

.. code-block:: bash

   $ knife data bag show prod passwords

to return something similar to:

.. code-block:: bash

   id:        passwords
   mysql:     xtSxLvqHqPP1gHsqP5SlytFtDIfpWMJebJ2aZPd0mGU=
   rabbitmq:  wVcK/OboqpRcfF5fOKlEHKz2ev7CxSrBsoCwWo9Jcko=

and then to view the same data bag item, but with decryption:

.. code-block:: bash

   $ knife data bag show --secret-file=./secret_key prod passwords

to return something similar to:

.. code-block:: bash

   id:        passwords
   mysql:     open-sesame-123
   rabbitmq:  open-queue-123
