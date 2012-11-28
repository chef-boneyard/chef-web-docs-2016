.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``delete`` argument is used to delete a specified cookbook or cookbook version on the |chef server| (and not locally).

This argument has the following syntax::

   knife cookbook delete COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

``-a``, ``--all``
   |all cookbooks delete|

``COOKBOOK_VERSION``
   |COOKBOOK_VERSION delete|

``-p``, ``--purge``
   |purge cookbook|

**Examples**

For example, to delete version "0.8" from a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook delete smartmon version 0.8

Type ``Y`` to confirm a deletion.
