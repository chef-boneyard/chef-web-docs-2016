.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``class_name``
     - |name class_chef_handler|
   * - ``source``
     - |path chef_handler|
   * - ``arguments``
     - |arguments chef_handler| Default value: ``[]``. For example:
       ::
 
          arguments :key1 => 'val1'

       or:
       ::
 
          arguments [:key1 => 'val1', :key2 => 'val2]
   * - ``supports``
     - |supports chef_handler| Possible values: ``:exception``, ``:report``, ``:both`` (exception **and** report handlers), or ``:start``. Default value: ``{ :report => true, :exception => true }``.
