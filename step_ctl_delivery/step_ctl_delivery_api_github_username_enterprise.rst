.. This is an included how-to. 

.. To link a Github enterprise user name:

.. code-block:: bash

   $ delivery api put users/$DELIVERY_USERNAME/set-oauth-alias --data='{"app_name":"github","alias":"$GITHUB_USERNAME"}'
