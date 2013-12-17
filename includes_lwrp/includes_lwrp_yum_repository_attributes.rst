.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. note:: The following table contains paraphrased descriptions for quick reference. See http://linux.die.net/man/5/yum.conf for complete descriptions of these attributes as they exist from the |yum| command line.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``baseurl``
     - The path to the repository.
   * - ``cost``
     - The relative cost of accessing this repository.
   * - ``description``
     - |description yum_repository| Default value: ``Ye Ole Rpm Repo``.
   * - ``enabled``
     - |use repo| Default value: ``true``.
   * - ``enablegroups``
     - Indicates whether |yum| will allow the use of package groups for this repository.
   * - ``exclude``
     - A space-separated list of packages to be excluded from updates and installs.
   * - ``failovermethod``
     - |failover_method|
   * - ``fastestmirror_enabled``
     - 
   * - ``gpgcheck``
     - Indicates whether |yum| will perform a |gnupg| signature check on packages. Default value: ``true``.
   * - ``gpgkey``
     - |name key_gnupg|
   * - ``http_caching``
     - Use to define how upstream HTTP caches handle HTTP downloads. Possible values: ``all`` (cache all HTTP downloads), ``none`` (cache no HTTP downloads), or ``packages`` (cache only |rpm| downloads, but not repository metadata downloads).
   * - ``include_config``
     - 
   * - ``includepkgs``
     - |include_packages|
   * - ``keepalive``
     - Indicates whether HTTP keepalive is used (if available).
   * - ``max_retries``
     - 
   * - ``metadata_expire``
     - The amount of time (in seconds) before metadata for this repository expires.
   * - ``mirrorexpire``
     - 
   * - ``mirrorlist``
     - |mirrorlist|

   * - ``mirrorlist_expire``
     - 
   * - ``priority``
     - 
   * - ``proxy``
     - 
   * - ``proxy_username``
     - 
   * - ``proxy_password``
     - 
   * - ``report_instanceid``
     - 
   * - ``repositoryid``
     - Default value: ``true``.
   * - ``sslcacert``
     - The path to the directory in which the certificate authorities |yum| should use to verify |ssl| certificates are located.
   * - ``sslclientcert``
     - The path to the |ssl| client certificate that |yum| should use to connect to repositories and/or remote sites.
   * - ``sslclientkey``
     - The path of the location in which the |ssl| client key used by |yum| is located.
   * - ``sslverify``
     - Indicates whether |yum| verifies |ssl| certificates.
   * - ``timeout``
     - The amount of time (in seconds) to wait before a connection times out.
