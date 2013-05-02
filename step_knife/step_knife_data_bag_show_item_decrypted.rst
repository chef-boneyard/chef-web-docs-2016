.. This is an included how-to. 

To show the decrypted contents of the same databag, enter:

.. code-block:: bash

   $ knife data bag show --secret-file /path/to/decryption/file passwords mysql

to return:

.. code-block:: javascript

   ## sample:
   {
      "id": "mysql",
      "pass": "thesecret123",
      "user": "fred"
   }




