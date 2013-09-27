.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following parameters can be used with the ``platform_family?`` method:

.. list-table::
   :widths: 100 500
   :header-rows: 1

   * - Parameter
     - Platforms
   * - ``arch``
     - |archlinux|
   * - ``debian``
     - |debian|, |mint|, |ubuntu|
   * - ``fedora``
     - |fedora|
   * - ``gentoo``
     - |gentoo|
   * - ``mac_os_x``
     - |mac os x|
   * - ``omnios``
     - |omnios|
   * - ``openbsd``
     - |open bsd|
   * - ``rhel``
     - |amazon linux|, |centos|, |oracle linux|, |scientific linux|, |redhat enterprise linux|
   * - ``slackware``
     - |slackware|
   * - ``solaris2``
     - |nexenta core|, |open indiana|, |solaris open|, |oracle solaris|, |smartos|, |solaris|, |solaris2|
   * - ``suse``
     - |suse|, |suse els|
   * - ``windows``
     - |windows|

For example:

.. code-block:: ruby

   platform_family?("gentoo")

or:

.. code-block:: ruby

   platform_family?("slackware", "suse", "arch")

.. note:: ``platform_family?`` will default to ``platform?`` when ``platform_family?`` is not explicitly defined.

