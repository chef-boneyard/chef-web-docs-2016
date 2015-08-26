.. This is an included how-to. 

.. To link a Github enterprise user name:

.. code-block:: bash

   $ delivery api put users/$DELIVERY_NAME/set-oauth-alias --data='{"app":"github","alias":"$GITHUB_NAME"}'
