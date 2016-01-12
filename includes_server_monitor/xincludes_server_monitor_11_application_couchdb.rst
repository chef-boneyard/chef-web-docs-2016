.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|couch db| can be polled directly using HTTP. If |couch db| is running it should respond on port 5984. For example:

.. code-block:: bash

   $ curl http://localhost:5984/

which will return something similar to:

.. code-block:: bash

   {
     "couchdb":"Welcome",
     "version":"1.0.3"
   }

or:

.. code-block:: bash

   $ curl http://localhost:5984/opscode_account

which will return something similar to:

.. code-block:: bash

   {
     "db_name":"opscode_account",
     "doc_count":187,
     "doc_del_count":0,
     ...
   }

|couch db| can also be accessed using a web interface. For example, using an |ssh| tunnel:

.. code-block:: bash

   $ ssh -L5984:localhost:5984 ubuntu@172.31.6.222

and then use a local web browser and navigate to the following address::

   http://localhost/5984/_utils/