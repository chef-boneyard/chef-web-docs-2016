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
     - Indicates that |yum| will use the fastest available mirror.
   * - ``gpgcheck``
     - Indicates whether |yum| will perform a |gnupg| signature check on packages. Default value: ``true``.
   * - ``gpgkey``
     - A URL that points to the ASCII-armored |gnupg| key file for this repository. Use this attribute when |yum| needs a public key to verify a package and when that key has not been imported into the |rpm| database.
   * - ``http_caching``
     - Use to define how upstream HTTP caches handle HTTP downloads. Possible values: ``all`` (cache all HTTP downloads), ``none`` (cache no HTTP downloads), or ``packages`` (cache only |rpm| downloads, but not repository metadata downloads).
   * - ``include_config``
     - The external configuration files for inclusion.
   * - ``includepkgs``
     - |include_packages|
   * - ``keepalive``
     - Indicates whether HTTP keepalive is used (if available).
   * - ``max_retries``
     - The maximum number of attempts made to retrieve a file before returning an error.
   * - ``metadata_expire``
     - The amount of time (in seconds) before metadata for this repository expires.
   * - ``mirrorlist``
     - A URL that points to a file that contains a list of base URLs. This attribute can be used with or instead of ``baseurl``.
   * - ``mirror_expire``
     - The amount of time (in seconds) after which a locally-cached mirror list will expire. When the current ``mirrorlist`` is less than this amount of time, |yum| will not download another copy of the mirror list.
   * - ``mirrorlist_expire``
     - The amount of time (in seconds) after which a locally-cached mirror list will expire. An alias for ``mirror_expire``.
   * - ``priority``
     - The priority for repository entries; a repository will have priority when its priority value is higher than another repository's priority value.. Possible values: ``1`` - ``99``.
   * - ``proxy``
     - The URL for the proxy server.
   * - ``proxy_password``
     - The proxy password.
   * - ``proxy_username``
     - The user name for the proxy.
   * - ``report_instanceid``
     - Use to ensure that instances running |amazon linux| can log the instance identifier (e.g. ``i-12345678``) and region (e.g. ``us-west-1``) for an instance that downloads a package. 
   * - ``repositoryid``
     - |name repository_yum|
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
