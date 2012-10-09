.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:bootstrapurl``
     - Optional.
   * - ``:description``
     - A description of the repository.
   * - ``:enabled``
     - Indicates whether a repository is enabled. Default value: ``1`` (enabled).
   * - ``:failovermethod``
     - Optional. The fail-over method. ``roundrobin`` randomly selects a URL out of a list of URLs and proceeds through each of them as it encounters a failure when contacting the host; ``priority`` starts from the first base URL listed and proceeds through them sequentially. Default value: ``roundrobin``.
   * - ``:includepkgs``
     - A list of packages in a repository.
   * - ``:key``
     - Optional. The name of the |gnupg| key that is installed by the |lwrp yum key| lightweight resource.
   * - ``:make_cache``
     - Optional.
   * - ``:mirrorlist``
     - A string that contains the URI to the mirror list, starting with ``http://``, ``ftp://``, or ``file://``. Use ``file://`` if the mirror list is a text file or resides on the local system.
   * - ``:repo_name``
     - The name of the channel.
   * - ``:type``
     - Optional.
   * - ``:url``
     - The URL from which a package is downloaded.