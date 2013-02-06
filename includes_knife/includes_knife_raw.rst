.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|knife raw|

This sub-command has the following syntax::

   knife raw REQUEST_PATH (options)

This sub-command has the following options:

``-i FILE``, ``--input FILE``
   |input file| 

``--[no-]pretty``
   |no-pretty|

``-m METHOD``, ``--method METHOD``
   |method request type|

**Examples**

To view information about a node:

.. code-block:: bash

   knife raw /nodes/<node_name>

