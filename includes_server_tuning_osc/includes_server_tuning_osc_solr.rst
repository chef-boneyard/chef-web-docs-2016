.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following settings are often modified from their out-of-the-box default settings as part of the tuning effort for the |service solr| service. 

Commonly tuned values include:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_solr['heap_size']``
     - |heap_size solr| 
       
       If |apache solr| is running out of memory, the ``/var/log/opscode/chef_solr-solr/current`` log file will contain ``SEVERE: java.lang.OutOfMemoryError: Java heap space``.
       
       The default value should work for many organizations with fewer than 25 nodes. Suggested value: ``256M`` per every 25 nodes. For example, an organization with 300 nodes, this value should be set to ``3072M``.
   * - ``chef_solr['max_field_length']``
     - |solr_max_field_length| Default value: ``100000`` (increased from the |apache solr| default value of ``10000``).


