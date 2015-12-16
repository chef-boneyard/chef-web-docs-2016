.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This set is required only once. Log into the |chef delivery| server via |ssh| and run the following command:

.. code-block:: bash

   $ sudo delivery-ctl setup-bitbucket $BITBUCKET_URL $BITBUCKET_USER $BITBUCKET_PASSWORD $ENTERPRISE

where

* ``$BITBUCKET_URL`` is the URL for the |bitbucket| instance
* ``$BITBUCKET_USER`` is the name of the user account that |chef delivery| will use to interact with |bitbucket|
* ``$BITBUCKET_PASSWORD`` is the password for the service account; this value should be quoted if it contains special characters
* ``$ENTERPRISE`` is the name of the |chef delivery| enterprise to which |bitbucket| will be connected
