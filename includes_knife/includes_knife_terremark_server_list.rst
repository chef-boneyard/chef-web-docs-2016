.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server list`` argument is used to find instances that are associated with a |terremark| account. The results may show instances that are not currently managed by the |chef server|.

This argument has the following syntax::

   knife terremark server list (options)

This argument has the following options:

``-A USER_NAME``, ``--terremark-username USER_NAME``
   |terremark-username|

``-K PASSWORD``, ``--terremark-password PASSWORD``
   |terremark-password|

``--print-after``
   |print-after|

``-S SERVICE_NAME``, ``--terremark-service SERVICE_NAME``
   |terremark-service|

For example, enter:

.. code-block:: bash

   $ knife terremark server list -A useraccount -K password -S service_name

to return something like:

.. code-block:: bash

   xxxxx

