.. This is an included how-to. 

To join queries using the OR boolean operator, enter the following:

.. code-block:: bash

   $ knife search sample "id:foo OR id:abc"

to return something like:
   
.. code-block:: bash

   {
     "total": 2,
     "start": 0,
     "rows": [
       {
         "comment": "an item named foo",
         "id": "foo",
         "animal": "pony"
       },
       {
         "comment": "an item named abc",
         "id": "abc",
         "animal": "unicorn"
       }
     ]
   }