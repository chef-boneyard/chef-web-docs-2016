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
   * - ``openbsd``
     - |open bsd|
   * - ``rhel``
     - |amazon linux|, |centos|, |oracle linux|, |scientific linux|, |redhat enterprise linux|
   * - ``slackware``
     - |slackware|
   * - ``suse``
     - |suse|, |suse els|
   * - ``windows``
     - |windows|

.. note:: For |solaris|-related platforms, the ``platform_family`` method does not support the |solaris| platform family and will default back to ``platform_family = platform``. For example, if the platform is |omnios|, the ``platform_family`` is ``omnios``, if the platform is |smartos|, the ``platform_family`` is ``smartos``, and so on.

For example:

.. code-block:: ruby

   platform_family?('gentoo')

or:

.. code-block:: ruby

   platform_family?('slackware', 'suse', 'arch')

.. note:: ``platform_family?`` will default to ``platform?`` when ``platform_family?`` is not explicitly defined.
