.. This is an included how-to. 


To list a single node attribute:

.. code-block:: bash

   knife node show NODE_NAME -a ATTRIBUTE_NAME

where ``ATTRIBUTE_NAME`` is something like ``kernel`` or ``platform``. This doesn't work for nested attributes like ``node[kernel][machine]`` because ``knife node show`` doesn't understand nested attributes.
