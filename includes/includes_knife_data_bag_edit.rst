.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``edit`` argument is used to edit the data contained in a data bag. If encryption is being used, the data bag will be decrypted, the data will be made available in the $EDITOR, and then encrypted again before saving it to the |chef server|.

This argument has the following syntax::

   knife data bag edit DATA_BAG_NAME [DATA_BAG_ITEM] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``DATA_BAG_ITEM``
     - |DATA_BAG_ITEM|
   * - ``--secret SECRET``
     - |secret|
   * - ``--secret-file FILE``
     - |secret-file|

.. note::  For encrypted data bag items, use *either* ``--secret`` or ``--secret-file``, not both.

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

