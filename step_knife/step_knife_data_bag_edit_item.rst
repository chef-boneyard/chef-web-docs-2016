.. This is an included how-to. 

To edit an item named "charlie" that is contained in a data bag named "admins", enter:

.. code-block:: bash

   $ knife data bag edit admins charlie

to open the |chef editor|. Once opened, you can update the data before saving it to the |chef server|. For example, by changing:

.. code-block:: bash

   {
      "id": "charlie"
   }

to:

.. code-block:: javascript

   {
      "id": "charlie",
      "uid": 1005,
      "gid":"ops",
      "shell":"/bin/zsh",
      "comment":"Crazy Charlie"
   }


