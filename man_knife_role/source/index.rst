=====================================================
role
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

.. include:: ../../includes_role/includes_role.rst

.. include:: ../../includes_knife/includes_knife_role.rst

Common Options
=====================================================
.. include:: ../../includes_knife/includes_knife_common_options.rst

bulk delete
=====================================================
.. include:: ../../includes_knife/includes_knife_role_bulk_delete.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_role_bulk_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example:

.. code-block:: bash

   $ knife role bulk delete "^[0-9]{3}$"

create
=====================================================
.. include:: ../../includes_knife/includes_knife_role_create.rst
   
**Syntax**

.. include:: ../../includes_knife/includes_knife_role_create_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_role_create_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_role_create_settings.rst

**Examples**

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

delete
=====================================================
.. include:: ../../includes_knife/includes_knife_role_delete.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_role_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example:

.. code-block:: bash

   $ knife role delete devops

Type ``Y`` to confirm a deletion.

edit
=====================================================
.. include:: ../../includes_knife/includes_knife_role_edit.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_role_edit_syntax.rst

**Options**

|no_options|

**Examples**

For example, to edit the data for a role named "role1", enter:

.. code-block:: bash

   $ knife role edit role1
   
Update the role data in JSON:

.. code-block:: javascript

   ## sample:
   {
      "name": "role1",
      "default_attributes": {
      },
      "json_class": "Chef::Role",
      "run_list": [
 
      ],
      "description": "This is the description for the role1 role.",
      "chef_type": "role",
      "override_attributes": {
      }
   }

When finished, save it.

from file
=====================================================
.. include:: ../../includes_knife/includes_knife_role_from_file.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_role_from_file_syntax.rst

**Options**

|no_options|

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_role_from_file_settings.rst

**Examples**

For example:

.. code-block:: bash

   $ knife role from file "path to JSON file"

list
=====================================================
.. include:: ../../includes_knife/includes_knife_role_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_role_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_role_list_options.rst

**Examples**

For example, to view a list of roles on the |chef server| and display the URI for each role returned, enter:

.. code-block:: bash

   $ knife role list -w

show
=====================================================
.. include:: ../../includes_knife/includes_knife_role_show.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_role_show_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_role_show_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_role_show_settings.rst

**Examples**

For example:

.. code-block:: bash

   $ knife role show devops

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife role show devops -F json

Other formats available include ``text``, ``yaml``, and ``pp``.
