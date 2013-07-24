.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``/metadata`` endpoint is used to download the |chef client|:

.. code-block:: xml

   http://www.opscode.com/chef/metadata?p=$PLATFORM&pv=$PLATFORM_VERSION&m=$MACHINE_ARCH&v=latest&prerelease=true

or:

.. code-block:: xml

   http://www.opscode.com/chef/download?p=$PLATFORM&pv=$PLATFORM_VERSION&m=$MACHINE_ARCH&v=latest&prerelease=true

where:

* ``p`` is the platform. Possible values: ``debian``, ``el`` (for |centos|), ``freebsd``, ``mac_os_x``, ``solaris2``, ``sles``, ``suse``, ``ubuntu`` or ``windows``.
* ``pv`` is the platform version. Possible values depend on the platform. For example, |ubuntu|: ``10.04``, ``10.10``, ``11.04``, ``11.10``, ``12.04``, or ``12.10`` or for |mac os x|: ``10.6`` or ``10.7``.
* ``m`` is the machine architecture for the machine on which the |chef client| will be installed. Possible values depend on the platform. For example, for |ubuntu| or |debian|: ``i686`` or ``x86_64`` or for |mac os x|: ``x86_64``.
* ``v`` is the version of the |chef client| to be installed. A version always takes the form x.y.z, where x, y, and z are decimal numbers that are used to represent major (x), minor (y), and patch (z) versions. A two-part version (x.y) is also allowed. For more information about application versioning, see http://semver.org/. Default value: ``latest``.
* ``prerelease`` indicates that pre-release versions of |chef client| will be included in the query. Default value: ``false``.

**Platform, Platform Version, Machine Architecture Table**

.. list-table::
   :widths: 200 100 100 100
   :header-rows: 1
 
   * - 
     - p
     - pv
     - m
   * - |centos|
     - ``el``
     - ``5``
     - ``x86_64``
   * - 
     - ``el``
     - ``5``
     - ``i686``
   * - 
     - ``el``
     - ``6``
     - ``x86_64``
   * - 
     - ``el``
     - ``6``
     - ``i686``
   * - |debian|
     - ``debian``
     - ``6``
     - ``x86_64``
   * - 
     - ``debian``
     - ``6``
     - ``i686``
   * - |freebsd|
     - ``freebsd``
     - ``9``
     - ``amd64``
   * - 
     - ``freebsd``
     - ``9``
     - ``i386``
   * - |mac os x|
     - ``mac_os_x``
     - ``10.6``
     - ``x86_64``
   * - 
     - ``mac_os_x``
     - ``10.7``
     - ``x86_64``
   * - |solaris|
     - ``solaris2``
     - ``5.10``
     - ``i386``
   * - 
     - ``solaris2``
     - ``5.11``
     - ``i386``
   * - 
     - ``solaris2``
     - ``5.9``
     - ``sparc``
   * - 
     - ``solaris2``
     - ``5.10``
     - ``sparc``
   * - 
     - ``solaris2``
     - ``5.11``
     - ``sparc``
   * - |suse|
     - ``suse``
     - ``12.1``
     - ``x86_64``
   * - 
     - ``suse``
     - ``12.1``
     - ``i686``
   * - |suse els|
     - ``sles``
     - ``11.2``
     - ``i686``
   * - 
     - ``sles``
     - ``11.2``
     - ``x86_64``
   * - |ubuntu|
     - ``ubuntu``
     - ``10.04``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``10.10``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``10.04``
     - ``i686``
   * - 
     - ``ubuntu``
     - ``10.10``
     - ``i686``
   * - 
     - ``ubuntu``
     - ``11.04``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``11.10``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``12.04``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``12.10``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``13.04``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``11.04``
     - ``i686``
   * - 
     - ``ubuntu``
     - ``11.10``
     - ``i686``
   * - 
     - ``ubuntu``
     - ``12.04``
     - ``i686``
   * - 
     - ``ubuntu``
     - ``12.10``
     - ``i686``
   * - 
     - ``ubuntu``
     - ``13.04``
     - ``i686``
   * - |windows|
     - ``windows``
     - ``2008r2``
     - ``x86_64``
   * - 
     - ``windows``
     - ``2003r2``
     - ``i686``
   * - 
     - ``windows``
     - ``2003r2``
     - ``x86_64``
   * - 
     - ``windows``
     - ``2008``
     - ``x86_64``
   * - 
     - ``windows``
     - ``2008``
     - ``i686``
   * - 
     - ``windows``
     - ``2012``
     - ``x86_64``

**Examples**

To get the latest supported build for |ubuntu| 12.04, enter the following:

.. code-block:: xml

   http://www.opscode.com/chef/download?p=$ubuntu&pv=$12.04&m=$x86_64

to return something like:

.. code-block:: xml

   url     https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.8-1.ubuntu.12.04_amd64.deb
   md5     076bfc8409ef3cc18w3c9cB15b772b82
   sha256  2ddddd8a18dtnbcc8d8e557d4c2dd1234abb6b20cfc341fgt62444401d76351c

Or to get the nightly build for |mac os x| 10.7:

.. code-block:: xml

   http://www.opscode.com/chef/download?p=$osx&pv=$10.7&m=$x86_64&nightlies=true

To use |curl| to get the omnibus package for |ubuntu| 12.04, and return the data as |json| data, enter the following:

.. code-block:: bash

   $ curl -H "Accept: application/json" 'https://www.opscode.com/chef/metadata-server?p=ubuntu&pv=12.04&m=x86_64'

to return something like:

.. code-block:: javascript

   {
     "relpath": "/ubuntu/12.04/x86_64/chef-server_11.0.8-1.ubuntu.12.04_amd64.deb",
     "md5": "076bfc8409ef2bc1818c9c515b472b82",
     "sha256": "29fa28a18d48bcc8d8e557d4c2dd94386abb6b20cfc341fff62444401d76351c",
     "url": "https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.8-1.ubuntu.12.04_amd64.deb"
   }

To use |curl| to return only the SHA for the installer, enter the following:

.. code-block:: bash

   $ curl -s 'https://www.opscode.com/chef/metadata-server?p=ubuntu&pv=12.04&m=x86_64' | awk '$1 == "sha256" { print $2 }'

to return something like:

.. code-block:: bash

   $ 29fa28a18d48bcc8d8e888d4c2dd94386abb6b20cfc341fff62664401d76351c

To use |curl| to download a package directly, enter the following:

.. code-block:: bash

   $ curl -L -O 'https://www.opscode.com/chef/download?p=debian&pv=6&m=x86_64'