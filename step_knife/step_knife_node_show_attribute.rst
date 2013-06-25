.. This is an included how-to. 


To list a single node attribute:

.. code-block:: bash

   knife node show <node_name> -a <attribute_name>

where ``<attribute_name>`` is something like kernel or platform. (This doesn't work for nested attributes like ``node[kernel][machine]`` because ``knife node show`` doesn't understand nested attributes.)
