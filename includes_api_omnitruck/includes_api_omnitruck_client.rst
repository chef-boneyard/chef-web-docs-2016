.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``/metadata`` and/or ``/download`` endpoints can be used to download the |chef client|:

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


