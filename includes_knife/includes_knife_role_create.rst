.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to add a role to the |chef server|. To add a role to a node, you must use the ``node`` sub-command and the ``run-list add`` argument. Role data is saved as JSON on the |chef server|.

This argument has the following syntax::

   knife role create ROLE_NAME (options)

This argument has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``-d DESCRIPTION``, ``--description DESCRIPTION``
   |description role|

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

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``--print-after``
   |print-after|

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

For example, to add a role named "role1", enter:

.. code-block:: bash

   $ knife role create role1
   
In the $EDITOR enter the role data in JSON:

.. code-block:: javascript

   ## sample:
   {
      "name": "role1",
      "default_attributes": {
      },
      "json_class": "Chef::Role",
      "run_list": [
 
      ],
      "description": "",
      "chef_type": "role",
      "override_attributes": {
      }
   }

When finished, save it.
   
