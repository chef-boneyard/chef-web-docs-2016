.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings are often modified from their out-of-the-box default settings as part of the tuning effort for |chef server oec| and the |service solr| service. 

Commonly tuned values include:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_solr['heap_size']``
     - |heap_size solr| The default value should work for many organizations with fewer than 25 nodes. Suggested value: ``256M`` per every 25 nodes. For example, an organization with 300 nodes, this value should be set to ``3072M``.

