.. This is an included how-to. 

To join queries using the AND boolean operator, enter the following:

.. code-block:: bash

   $ knife search sample "id:b* AND animal:dog"

to return something like:
   
.. code-block:: bash
   
   {
     "total": 1,
     "start": 0,
     "rows": [
       {
         "comment": "an item named baz",
         "id": "baz",
         "animal": "dog"
       }
     ]
   }