=====================================================
user
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

.. include:: ../../includes_knife/includes_knife_user.rst

Common Options
=====================================================
.. include:: ../../includes_knife/includes_knife_common_options.rst

create
=====================================================
.. include:: ../../includes_knife/includes_knife_user_create.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_user_create_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_user_create_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_user_create_settings.rst

**Examples**

For example, to create a new user named "Radio Birdman" with a private key saved to "/keys/user_name", enter:

.. code-block:: bash

   $ knife user create "Radio Birdman" -f /keys/user_name

delete
=====================================================
.. include:: ../../includes_knife/includes_knife_user_delete.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_user_delete_syntax.rst

**Options**

|no_options|

**Examples**

For example, to delete a user named "Steve Danno", enter:

.. code-block:: bash

   $ knife user delete "Steve Danno"

edit
=====================================================
.. include:: ../../includes_knife/includes_knife_user_edit.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_user_edit_syntax.rst

**Options**

|no_options|

**Examples**

None.

list
=====================================================
.. include:: ../../includes_knife/includes_knife_user_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_user_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_user_list_options.rst

**Examples**

None.

reregister
=====================================================
.. include:: ../../includes_knife/includes_knife_user_reregister.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_user_reregister_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_user_reregister_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_user_reregister_settings.rst

**Examples**

For example, to regenerate the RSA key pair for a user named "Robert Younger", enter:

.. code-block:: bash

   $ knife user reregister "Robert Younger"

show
=====================================================
.. include:: ../../includes_knife/includes_knife_user_show.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_user_show_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_user_show_options.rst

**Examples**

For example, to view a user named "Dennis Teck", enter:

.. code-block:: bash

   $ knife user show "Dennis Teck"

to return something like:

.. code-block:: bash

   chef_type:   user
   json_class:  Chef::User
   name:        Dennis Teck
   public_key:

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife user show "Dennis Teck" -F json

Other formats available include ``text``, ``yaml``, and ``pp``.



