=====================================================
knife deps
=====================================================

.. include:: ../../includes_knife/includes_knife_deps.rst

Syntax
=====================================================
.. include:: ../../includes_knife/includes_knife_deps_syntax.rst

Options
=====================================================
.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

.. include:: ../../includes_knife/includes_knife_deps_options.rst

knife.rb Settings
-----------------------------------------------------
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_deps_settings.rst

Examples
=====================================================
To find the dependencies for a node:

.. code-block:: bash

   $ knife deps nodes/node_name.json 

To find the dependencies for a cookbook:

.. code-block:: bash

   $ knife deps cookbooks/cookbook_name.json

To find the dependencies for a role:

.. code-block:: bash

   $ knife deps roles/role_name.json

To find the dependencies for an environment:

.. code-block:: bash

   $ knife deps environments/environment_name.json

Use a wildcard to return all the child nodes:

.. code-block:: bash

   $ knife deps environments/*.json

To find the dependencies for a combination of nodes, cookbooks, roles, and/or environments:

.. code-block:: bash

   $ knife deps cookbooks/git.json cookbooks/github.json roles/base.json environments/desert.json nodes/mynode.json

Use the ``--tree`` option to view the results with structure:

.. code-block::  bash

   $ knife deps roles/webserver.json

to return something like:

.. code-block:: bash

   roles/webserver.json
     roles/base.json
       cookbooks/github
         cookbooks/git
       cookbooks/users
     cookbooks/apache2

Use the output of ``knife deps`` to pass a command to ``knife upload``. For example:

.. code-block:: bash

   $ knife upload `knife deps nodes/*.json

or to ``knife xargs``:

.. code-block:: bash

   $ knife deps nodes/*.json | xargs knife upload
