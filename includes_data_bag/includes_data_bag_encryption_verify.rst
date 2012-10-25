.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When the contents of a data bag are encrypted, they will not be readable until they are decrypted. Encryption can be verified with a |knife| command similar to:

.. code-block:: bash

   knife data bag create passwords mysql

where "passwords" is the name of the data bag, "mysql" is the name of the data bag item. This will return something similar to: 

.. code-block:: javascript

   {
     "id": "mysql",
     "pass": "trywgFA6R70NO28PNhMpGhEvKBZuxouemnbnAUQsUyo=\n",
     "user": "e/p+8WJYVHY9fHcEgAAReg==\n"
   }