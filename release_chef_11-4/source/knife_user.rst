=====================================================
knife user
=====================================================

.. include:: ../../includes_knife/includes_knife_user.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

create
=====================================================
.. include:: ../../includes_knife/includes_knife_user_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_create_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_client_create_settings.rst

Examples
-----------------------------------------------------
For example, to create a new user named "Radio Birdman" with a private key saved to "/keys/user_name", enter:

.. code-block:: bash

   $ knife user create "Radio Birdman" -f /keys/user_name

delete
=====================================================
.. include:: ../../includes_knife/includes_knife_user_delete.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_delete_syntax.rst

Options
-----------------------------------------------------
|no_options|

Examples
-----------------------------------------------------
For example, to delete a user named "Steve Danno", enter:

.. code-block:: bash

   $ knife user delete "Steve Danno"

edit
=====================================================
.. include:: ../../includes_knife/includes_knife_user_edit.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_edit_syntax.rst

Options
-----------------------------------------------------
|no_options|

Examples
-----------------------------------------------------
None.


list
=====================================================
.. include:: ../../includes_knife/includes_knife_user_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_list_options.rst

Examples
-----------------------------------------------------
None.

reregister
=====================================================
.. include:: ../../includes_knife/includes_knife_user_reregister.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_reregister_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_reregister_options.rst

knife.rb Settings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. note:: See :doc:`knife.rb </config_rb_knife>` for more information about how to add optional settings to the |knife rb| file.

.. include:: ../../includes_knife/includes_knife_client_create_settings.rst

Examples
-----------------------------------------------------
For example, to regenerate the RSA key pair for a user named "Robert Younger", enter:

.. code-block:: bash

   $ knife user reregister "Robert Younger"

show
=====================================================
.. include:: ../../includes_knife/includes_knife_user_show.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_show_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_user_show_options.rst

Examples
-----------------------------------------------------
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


