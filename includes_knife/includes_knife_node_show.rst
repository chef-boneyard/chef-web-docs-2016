.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` argument is used to display information about a node.

This argument has the following syntax::

   knife node show NODE_NAME (options)

This argument has the following options:

``-a ATTR``, ``--attribute ATTR``
   |attribute|

``-l``, ``--long``
   |long|

``-m``, ``--medium``
   |medium|

``-r``, ``--run-list``
   |run-list indicator|

**Examples**

For example, to view all data for a node named "build", enter:

.. code-block:: bash

   $ knife node show build

to return:

.. code-block:: bash

   Node Name:   build
   Environment: _default
   FQDN:
   IP:
   Run List:
   Roles:
   Recipes:
   Platform:
   
To view the FQDN for a node named "i-12345678", enter:

.. code-block:: bash

   $ knife node show i-12345678 -a fqdn

to return:

.. code-block:: bash

   fqdn: ip-10-251-75-20.ec2.internal

To view the run list for a node named "dev", enter:

.. code-block:: bash

   $ knife node show dev -r

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife node show i-12345678 -F json

Other formats available include ``text``, ``yaml``, and ``pp``.

To show basic information about a node, truncated and nicely formatted:

.. code-block:: bash

   knife node show <node_name>

To show all information about a node, nicely formatted:

.. code-block:: bash

   knife node show -l <node_name>

To view node information in raw |json|, use the ``-l`` or ``--long`` option:

.. code-block:: bash

   knife node show -l -F json <node_name>

and/or:

.. code-block:: bash

   knife node show -l --format=json <node_name>

To list a single node attribute:

.. code-block:: bash

   knife node show <node_name> -a <attribute_name>

where ``<attribute_name>`` is something like kernel or platform. (This doesn't work for nested attributes like ``node[kernel][machine]`` because ``knife node show`` doesn't understand nested attributes.)

