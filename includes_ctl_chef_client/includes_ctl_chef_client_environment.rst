.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use this option to set the ``chef_environment`` value for a node.

.. note:: Any environment specified by ``chef_environment`` in a |json| file will take precedence over an environment specified by the ``--environment`` option when both options are part of the same command.

For example, run the following:

.. code-block:: bash

   $ chef-client -j /path/to/file.json

where ``/path/to/file.json`` is similar to:

.. code-block:: javascript

   {
     "chef_environment": "pre-production"
   }

This will set the environment for the node to ``pre-production``.
