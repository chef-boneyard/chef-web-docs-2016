.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|knife| can be used to create data bags and data bag items when the ``knife data bag`` sub-command is run with the ``create`` argument and to update the |chef server| with local changes to data bag items with the ``from_file`` argument. For example:

.. code-block:: bash

   $ knife data bag create DATA_BAG_NAME (DATA_BAG_ITEM)

As long as a file is in the correct directory structure |knife| will be able to find the data bag and data bag item with only the name. For example:

.. code-block:: bash

   $ knife data bag from file BAG_NAME ITEM_NAME.json

will load the following file::

   data_bags/BAG_NAME/ITEM_NAME.json

Continuing the example above, if you are in the "admins" directory and make changes to the file charlie.json, then to upload that change to the |chef server| use the following command:

.. code-block:: bash

   $ knife data bag from file admins charlie.json

In some cases, such as when |knife| is not being run from the root directory for |chef|, the full path to the data bag item may be required. For example:

.. code-block:: bash

   knife data bag from file BAG_NAME /path/to/file/ITEM_NAME.json