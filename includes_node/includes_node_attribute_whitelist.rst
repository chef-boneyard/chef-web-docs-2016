.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. warning:: When these settings are used, any attribute not defined in a whitelist will not be saved.

Attributes that should be saved by a node may be whitelisted in the |client rb| file. The whitelist is a |ruby hash| of keys that specify each attribute to be saved. For example, normal attribute data similar to:

.. code-block:: javascript

   {
     "filesystem" => {
       "/dev/disk0s2" => {
         "size" => "10mb"
       },
       "map - autohome" => {
         "size" => "10mb"
       }
     },
     "network" => {
       "interfaces" => {
         "eth0" => {...},
         "eth1" => {...},
       }
     } 
   }

To whitelist the ``network`` attributes and prevent the other attributes from being saved, update the |client rb| file:

.. code-block:: ruby

   normal_attribute_whitelist = ["network/interfaces/"]

Any attribute that is not specified in an attribute whitelist **will not** be saved. So based on the previous whitelist, the ``filesystem`` and ``map - autohome`` attributes will not be saved, but the ``network`` attributes will.

Attribute are whitelisted by attribute type. Each attribute type---``automatic``, ``default``, ``normal``, and ``override``---may define whitelists by using the following settings in the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``automatic_attribute_whitelist``
     - |whitelist attribute_automatic| For example: ``["network/interfaces/eth0"]``. Default value: all attributes are saved. |whitelist attribute_none|
   * - ``default_attribute_whitelist``
     - |whitelist attribute_default| For example: ``["filesystem/dev/disk0s2/size"]``. Default value: all attributes are saved. |whitelist attribute_none|
   * - ``normal_attribute_whitelist``
     - |whitelist attribute_normal| For example: ``["filesystem/dev/disk0s2/size"]``. Default value: all attributes are saved. |whitelist attribute_none|
   * - ``override_attribute_whitelist``
     - |whitelist attribute_override| For example: ``["map - autohome/size"]``. Default value: all attributes are saved. |whitelist attribute_none|

.. warning:: It is recommended that only ``automatic_attribute_whitelist`` be used to whitelist attributes.

