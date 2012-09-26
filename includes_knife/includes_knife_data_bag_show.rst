.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` argument is used to view the contents of a data bag.

This argument has the following syntax::

   knife data bag show DATA_BAG_NAME (options)

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


