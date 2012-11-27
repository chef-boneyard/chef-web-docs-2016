.. This is an included how-to. 

Run chef-client on all of your nodes. Depending on your environment, this could be done via knife ssh:

.. code-block:: bash

   knife ssh 'name:*' 'sudo chef-client'



