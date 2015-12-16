.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Log in to the |chef delivery| server and run the following command. Follow the URL given to finish authorizing |chef delivery| to |github|.

**For Github Enterprise**

.. code-block:: bash

   delivery-ctl setup-github-enterprise-token $DELIVERY_ENTERPRISE

**For Github.com**

.. code-block:: bash

   delivery-ctl setup-github-token $DELIVERY_ENTERPRISE