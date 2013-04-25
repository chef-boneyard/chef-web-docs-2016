.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |json| format for environments maps directly to the domain-specific |ruby| format: the same settings, attributes, and values, and a similar structure and organization. For example::

   {
     "name": "dev",
     "default_attributes": {
       "apache2": {
         "listen_ports": [
           "80",
           "443"
         ]
       }
     },
     "json_class": "Chef::Environment",
     "description": "",
      "cookbook_versions": {
       "couchdb": "= 11.0.0"
     },
     "chef_type": "environment"
     }

The |json| format has two additional settings:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_type``
     - |json dsl environment chef type|
   * - ``json_class``
     - |json dsl environment json class|

