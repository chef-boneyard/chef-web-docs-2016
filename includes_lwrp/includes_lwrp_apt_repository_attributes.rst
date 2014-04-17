.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``components``
     - An array of components. For example: ``["main", "street"]``. Default value: ``[]``.
   * - ``deb_src``
     - Indicates whether the ``deb-src`` source repository is added. Default value: ``false``.
   * - ``distribution``
     - The name of the distribution. For example: ``lucid``.
   * - ``key``
     - The fingerprint of the key server or the URI for the |pgp| encryption key associated with the |apt| repository specified by ``repo_name``. Default value: ``nil``.
   * - ``keyserver``
     - The key server from which a |pgp| encryption key is downloaded. Default value: ``nil``.
   * - ``repo_name``
     - The name of the |apt| repository. Default value: ``name``.
   * - ``uri``
     - The URI for the |apt| repository. Default value: ``nil``.
