=====================================================
About Data Bags
=====================================================

.. include:: ../../includes_data_bag/includes_data_bag.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_data_bags_store`
     - Each data bag is placed within the ``data_bags`` directory within the |chef| repository.
   * - :doc:`essentials_data_bags_create`
     - A data bag can be created using |knife| or manually.
   * - :doc:`essentials_data_bags_encrypt`
     - Any data bag item can be encrypted.

Data bags can be accessed from the following locations:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_data_bags_use_search`
     - Every data bag can be accessed via a search index that has the same name as the data bag.
   * - :doc:`essentials_data_bags_use_environment`
     - There are two main strategies that can be used to store per-environment data within a data bag: by using a top-level key that corresponds to the environment or by using separate items for each environment.
   * - :doc:`essentials_data_bags_use_recipe`
     - A data bag can be accessed from a recipe by loading it by name using the recipe DSL or by accessing it via a search index.
   * - :doc:`essentials_data_bags_use_chef_solo`
     - |chef solo| can load data from a data bag as long as the contents of that data bag are accessible from a directory structure that exists on the same machine as |chef solo|.



.. toctree::
   :hidden:

   essentials_data_bags_create
   essentials_data_bags_encrypt
   essentials_data_bags_store
   essentials_data_bags_use_chef_solo
   essentials_data_bags_use_environment
   essentials_data_bags_use_recipe
   essentials_data_bags_use_search