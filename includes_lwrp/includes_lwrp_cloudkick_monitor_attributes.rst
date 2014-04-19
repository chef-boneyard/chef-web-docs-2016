.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

**jamescott: THIS TOPIC IS CURRENTLY DEPRECATED FROM THE RESOURCES REFERENCE. MUST BE REVIEWED CLOSELY BEFORE IT CAN BE RE-ADDED.**

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``name``
     - The name of the monitor.
   * - ``notes``
     - Optional. Notes about the monitor.
   * - ``oauth_key``
     - The |oauth| key used to authenticate to the |cloudkick| API.
   * - ``oauth_secret``
     - The |oauth| secret used to authenticate to the |cloudkick| API.
   * - ``query``
     - A node-based query that identifies one (or more) targets to which the monitor will be applied. If this attribute is unspecified, it will default to the name of the node.
