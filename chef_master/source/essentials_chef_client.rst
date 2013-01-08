=====================================================
|chef client|
=====================================================

.. include:: ../../includes_chef/includes_chef_client.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_chef_client_validator`
     - The |chef validator| ensures that when a node runs for the first time that it can make an authenticated request to the |chef server|.
   * - :doc:`essentials_chef_client_ssl`
     - All communication between the |chef client| and the |chef server| is done using SSL and signed header authentication.

.. toctree::
   :hidden:

   essentials_chef_client_validator
   essentials_chef_client_ssl