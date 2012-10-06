.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``flavor list`` argument is used to show a list of flavors in an |openstack| environment, including details such as ID, name, architecture, RAM, disk, and cores.

This argument has the following syntax::

   knife openstack flavor list

This argument has the following options:

``-A ID``, ``--openstack-access-key-id ID``
   |openstack-access-key-id|

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-k KEY``, ``--key KEY``
   |key|

``-K SECRET``, ``--openstack-secret-access-key SECRET``
   |openstack-secret-access-key|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--openstack-api-endpoint ENDPOINT``
   |openstack-api-endpoint|

``--print-after``
   |print-after|

``--region REGION``
   |region openstack|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

For example, to xxxxx, enter:

.. code-block:: bash

   $ knife openstack flavor list

