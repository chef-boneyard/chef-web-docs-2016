.. This is an included how-to. 

To search, using fuzzy results, enter the following:

.. code-block:: bash

   $ knife search client "name:boo~"
   
where ``boo~`` defines the fuzzy search pattern. Something like the following will be returned:

.. code-block:: bash

   {
     "total": 1,
     "start": 0,
     "rows": [
       {
         "public_key": "too long didn't read",
         "name": "foo",
         "_rev": "1-f11a58043906e33d39a686e9b58cd92f",
         "json_class": "Chef::ApiClient",
         "admin": false,
         "chef_type": "client"
       }
     ]
   }
