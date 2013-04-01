=====================================================
environment
=====================================================

.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt

.. include:: ../../includes_environment/includes_environment.rst

.. include:: ../../includes_knife/includes_knife_environment.rst

Common Options
=====================================================
.. include:: ../../includes_knife/includes_knife_common_options.rst

create
=====================================================
.. include:: ../../includes_knife/includes_knife_environment_create.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_environment_create_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_environment_create_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_environment_create_settings.rst

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

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_environment_from_file_settings.rst

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

