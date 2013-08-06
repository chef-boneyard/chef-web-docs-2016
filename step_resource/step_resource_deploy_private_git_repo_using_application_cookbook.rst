.. This is an included how-to. 

To deploy from a private |git| repository without using the |cookbook application| cookbook, first ensure that:

* the private key does not have a passphrase, as this will pause a |chef client| run to wait for input
* an |ssh| wrapper is being used
* a private key has been added to the node

and then use code like the following to remove a passphrase from a private key:

.. code-block:: bash

   ssh-keygen -p -P 'YOURPASSPHRASE' -N '' -f id_deploy



