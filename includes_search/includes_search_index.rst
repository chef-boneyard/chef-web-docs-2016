.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|search index| |chef| builds the following search indexes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Search Index Name
     - Description
   * - ``client``
     - |chef api client|
   * - ``DATA_BAG_NAME``
     - |search index_data_bag| The name of the search index is the name of the data bag. For example, if the name of the data bag was "admins" then a corresponding search query might look something like ``search(:admins, "*:*")``.
   * - ``environment``
     - |search index_environment|
   * - ``node``
     - |search index_node|
   * - ``role``
     - |search index_role|
