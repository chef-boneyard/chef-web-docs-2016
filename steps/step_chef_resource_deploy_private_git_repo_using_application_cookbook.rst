.. This is an included how-to. 

To deploy from a private |git| repository without using the application cookbook:


To deploy from a private |git| repositopry without using the application cookbook, the following will need to happen:

* the private key cannot have a passphrase, as this will pause a |chef| run to wait for input
* an |ssh| wrapper must be used
* a private key must be added to the node

To remove a passphrase from a private key:

.. code-block:: bash

   ssh-keygen -p -P 'YOURPASSPHRASE' -N '' -f id_deploy



