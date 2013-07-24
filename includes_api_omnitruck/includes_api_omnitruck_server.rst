.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``/metadata-server`` endpoint is used to download the |chef server|:

.. code-block:: xml

   http://www.opscode.com/chef/metadata-server?p=$PLATFORM&pv=$PLATFORM_VERSION&m=$MACHINE_ARCH&v=latest&prerelease=true&nightlies=true

where:

* ``p`` is the platform. Possible values: ``ubuntu`` or ``el`` (for |centos|).
* ``pv`` is the platform version.  Possible values depend on the platform. For example, |ubuntu|: ``10.04``, ``10.10``, ``11.04``, ``11.10``, ``12.04``, or ``12.10``.
* ``m`` is the machine architecture for the machine on which the |chef server| will be installed. Possible values: ``x86_64``.
* ``v`` is the version of the |chef server| to be installed. A version always takes the form x.y.z, where x, y, and z are decimal numbers that are used to represent major (x), minor (y), and patch (z) versions. A two-part version (x.y) is also allowed. For more information about application versioning, see http://semver.org/. Default value: ``latest``.
* ``prerelease`` indicates that pre-release versions of |chef server| will be included in the query. Default value: ``false``.
* ``nightlies`` indicates that nightly versions of |chef server| will be included in the query. Default value: ``false``.

.. warning:: Nightly versions should never be run in a production environment and should be used for testing and validation purposes only.

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
     - ``6``
     - ``x86_64``
   * - |ubuntu|
     - ``ubuntu``
     - ``10.04``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``11.04``
     - ``x86_64``
   * - 
     - ``ubuntu``
     - ``12.04``
     - ``x86_64``

**Examples**

To get the latest supported build for |ubuntu| 12.04, enter the following:

.. code-block:: xml

   http://www.opscode.com/chef/metadata-server?p=$ubuntu&pv=$12.04&m=$x86_64

to return something like:

.. code-block:: xml

   url     https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.8-1.ubuntu.12.04_amd64.deb
   md5     076bfc8409ef3cc18w3c9cB15b772b82
   sha256  2ddddd8a18dtnbcc8d8e557d4c2dd1234abb6b20cfc341fgt62444401d76351c

Or to get the nightly build for |ubuntu| 12.04:

.. code-block:: xml

   http://www.opscode.com/chef/metadata-server?p=$ubuntu&pv=$12.04&m=$x86_64&nightlies=true