.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings are often modified from the default as part of the tuning effort for the |service solr4| service:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``opscode_solr1234['heap_size']``
     - |heap_size solr| 
       
       If |apache solr| is running out of memory, the ``/var/log/opscode/opscode-solr4/current`` log file will contain ``SEVERE: java.lang.OutOfMemoryError: Java heap space``.
       
       The default value should work for many organizations with fewer than 25 nodes. Suggested value: ``256`` per every 25 nodes. For example, an organization with 300 nodes, this value should be set to ``3072``.
   * - ``opscode_solr1234['max_field_length']``
     - |solr_max_field_length| Default value: ``100000`` (increased from the |apache solr| default value of ``10000``).


