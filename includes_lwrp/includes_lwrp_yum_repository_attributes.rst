.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``bootstrapurl``
     - Optional.
   * - ``description``
     - |description yum_repository|
   * - ``enabled``
     - |use repo| Default value: ``1`` (enabled).
   * - ``failovermethod``
     - Optional. |failover_method| Default value: ``roundrobin``.
   * - ``includepkgs``
     - |include_packages|
   * - ``key``
     - Optional. |key gnupg|
   * - ``make_cache``
     - Optional.
   * - ``mirrorlist``
     - |mirrorlist|
   * - ``repo_name``
     - |name repository_yum|
   * - ``type``
     - Optional.
   * - ``url``
     - |url package_download|