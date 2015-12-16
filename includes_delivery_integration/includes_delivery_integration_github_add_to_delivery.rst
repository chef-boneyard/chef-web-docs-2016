.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To add the |github| |oauth| app to |chef delivery|, log in to the |chef delivery| server and run the following command:

**For Github Enterprise**

.. code-block:: bash

   delivery-ctl setup-github-enterprise $GHE_SERVER_ROOT_URL $CLIENT_ID $CLIENT_SECRET

**For Github.com**

.. code-block:: bash

   delivery-ctl setup-github $CLIENT_ID $CLIENT_SECRET
