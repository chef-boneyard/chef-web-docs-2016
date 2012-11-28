.. This is an included how-to. 

To register nodes with |chef hosted|, run the following bootstrap command on every node:

.. code-block:: bash

   knife bootstrap NODE_IP_ADDRESS -d migration -x platform --sudo

The exact command will depend on how the actual environment is configured on each node. For example, to bootstrap and register a node that is running |ubuntu|, enter something like:

.. code-block:: bash

   knife bootstrap NODE_IP_ADDRESS -d migration -x ubuntu --sudo
