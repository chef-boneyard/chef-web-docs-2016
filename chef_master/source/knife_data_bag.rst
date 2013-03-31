=====================================================
knife data bag
=====================================================

.. include:: ../../includes_data_bag/includes_data_bag.rst

.. include:: ../../includes_data_bag/includes_data_bag_encryption.rst

.. include:: ../../includes_knife/includes_knife_data_bag.rst

create
=====================================================
.. include:: ../../includes_knife/includes_knife_data_bag_create.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_data_bag_create_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_data_bag_create_options.rst

**Examples**

For example, to create a data bag named "admins", enter:

.. code-block:: bash

   $ knife data bag create admins

to return:

.. code-block:: bash

   Created data_bag[admins]

delete
=====================================================
.. include:: ../../includes_knife/includes_knife_data_bag_delete.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_data_bag_delete_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_data_bag_delete_options.rst

**Examples**

For example:

.. code-block:: bash

   $ knife data bag delete admins
   
Or, to delete an item named "charlie", enter:

.. code-block:: bash

   $ knife data bag delete admins charlie

Type ``Y`` to confirm a deletion.

edit
=====================================================
.. include:: ../../includes_knife/includes_knife_data_bag_edit.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_data_bag_edit_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_data_bag_edit_options.rst

**Examples**

For example, to edit the contents of a data bag, enter:

.. code-block:: bash

   $ knife data bag edit admins

To edit an item named "charlie" that is contained in a data bag named "admins", enter:

.. code-block:: bash

   $ knife data bag edit admins charlie

to open the $EDITOR. Once opened, you can update the data before saving it to the |chef server|. For example, by changing:

.. code-block:: bash

   {
      "id": "charlie"
   }

to:

.. code-block:: javascript

   {
      "id": "charlie",
      "uid": 1005,
      "gid":"ops",
      "shell":"/bin/zsh",
      "comment":"Crazy Charlie"
   }

from file
=====================================================
.. include:: ../../includes_knife/includes_knife_data_bag_from_file.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_data_bag_from_file_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_data_bag_from_file_options.rst

**Examples**

To create a data bag on the |chef server| from a file:

.. code-block:: bash

   $ knife data bag from file "path to JSON file"

To create a data bag named "devops_data" that contains encrypted data, enter:

.. code-block:: bash

   $ knife data bag from file devops_data --secret-file "path to decryption file"


list
=====================================================
.. include:: ../../includes_knife/includes_knife_data_bag_list.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_data_bag_list_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_data_bag_list_options.rst

**Examples**

For example, to view a list of data bags on the |chef server|, enter:

.. code-block:: bash

   $ knife data bag list

show
=====================================================
.. include:: ../../includes_knife/includes_knife_data_bag_show.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_data_bag_show_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_data_bag_show_options.rst

**Examples**

For example, to show the contents of a data bag, enter:

.. code-block:: bash

   $ knife data bag show admins

to return:

.. code-block:: bash

   charlie 

To show the contents of a specific item within data bag, enter:

.. code-block:: bash

   $ knife data bag show admins charlie

to return:

.. code-block:: bash

   comment:  Crazy Charlie
   gid:      ops
   id:       charlie
   shell:    /bin/zsh
   uid:      1005

To show the contents of a data bag named "passwords" with an item that contains encrypted data named "mysql", enter:

.. code-block:: bash

   $ knife data bag show passwords mysql

to return:

.. code-block:: javascript

   ## sample:
   {
     "id": "mysql",
     "pass": "trywgFA6R70NO28PNhMpGhEvKBZuxouemnbnAUQsUyo=\n",
     "user": "e/p+8WJYVHY9fHcEgAAReg==\n"
   }

To show the decrypted contents of the same databag, enter:

.. code-block:: bash

   $ knife data bag show --secret-file /path/to/decryption/file passwords mysql

to return:

.. code-block:: javascript

   ## sample:
   {
      "id": "mysql",
      "pass": "thesecret123",
      "user": "fred"
   }

To view information in |json| format, use the ``-F`` common option as part of the command like this:

.. code-block:: bash

   $ knife data bag show admins -F json

Other formats available include ``text``, ``yaml``, and ``pp``.

