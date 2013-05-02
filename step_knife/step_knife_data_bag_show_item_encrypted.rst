.. This is an included how-to. 

To show the contents of a data bag named "passwords" with an item that contains encrypted data named "mysql", enter:

.. code-block:: bash

   $ knife data bag show passwords mysql

to return:

.. code-block:: javascript

   ## sample:
   {
     "id": "mysql",
     "pass": "trywgFA6R70NO28PNhMpGhEvKBZuxouemnbnAUQsUyo=\n",
     "user": "e/p+8WJYVHY9fHcEgAAReg==\n"
   }




