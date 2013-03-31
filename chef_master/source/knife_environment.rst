=====================================================
knife environment
=====================================================

.. include:: ../../includes_environment/includes_environment.rst

.. include:: ../../includes_knife/includes_knife_environment.rst

create
=====================================================
.. include:: ../../includes_knife/includes_knife_environment_create.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_environment_create_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_environment_create_options.rst

**Examples**

For example:

.. code-block:: bash

   $ knife environment create dev -d "The development environment."

delete
=====================================================
.. include:: ../../includes_knife/includes_knife_environment_delete.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_environment_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example, to delete an environment named "dev", enter:

.. code-block:: bash

   $ knife environment delete dev

Type ``Y`` to confirm a deletion.

edit
=====================================================
.. include:: ../../includes_knife/includes_knife_environment_edit.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_environment_edit_syntax.rst

**Options**

|no_options|

**Examples**

For example, to edit an environment named "devops", enter:

.. code-block:: bash

   $ knife environment edit devops

from file
=====================================================
.. include:: ../../includes_knife/includes_knife_environment_from_file.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_environment_from_file_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_environment_from_file_options.rst

**Examples**

For example:

.. code-block:: bash

   $ knife environment create devops from file "path to JSON file"

or:

.. code-block:: bash

   $ knife environment edit devops from file "path to JSON file"

list
=====================================================
.. include:: ../../includes_knife/includes_knife_environment_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_environment_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_environment_list_options.rst

**Examples**

For example:

.. code-block:: bash

   $ knife environment list -w

show
=====================================================
.. include:: ../../includes_knife/includes_knife_environment_show.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_environment_show_syntax.rst

**Options**

|no_options|

**Examples**

For example, to view information about the "dev" environment enter:

.. code-block:: bash

   $ knife environment show dev
   
to return:

.. code-block:: bash

   % knife environment show dev
   chef_type:            environment
   cookbook_versions:
   default_attributes:
   description:
   json_class:           Chef::Environment
   name:                 dev
   override_attributes:
    
   \\
   \\ 
   \\
   \\

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife environment show dev -F json

Other formats available include ``text``, ``yaml``, and ``pp``.
