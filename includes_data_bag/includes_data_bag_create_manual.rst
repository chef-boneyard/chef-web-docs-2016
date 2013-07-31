.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

One or more data bags and data bag items can be created manually under the ``data_bags`` directory in the |chef repo|. Any method can be used to create the data bag folders and data bag item |json| files. For example:

.. code-block:: bash

   $ mkdir data_bags/admins

would create a data bag folder named "admins". The equivalent command for using |knife| is:

.. code-block:: bash

   $ knife data bag create admins

A data bag item can be created manually in the same way as the data bag, but by also specifying the file name for the data bag item (this example is using |unix vi|, a visual editor for |unix|):

.. code-block:: bash

   $ vi data_bags/admins/charlie.json

would create a data bag item named "charlie.json" under the "admins" sub-directory in the ``data_bags`` directory of the |chef repo|. The equivalent command for using |knife| is:

.. code-block:: bash

  $ knife data bag create admins charlie