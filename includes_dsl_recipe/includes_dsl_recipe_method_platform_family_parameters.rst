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
   * - ``enterprise fedora``
     - |fedora enterprise|
   * - ``gentoo``
     - |gentoo|
   * - ``rhel``
     - |amazon linux|, |centos|, |oracle linux|, |scientific linux|, |redhat|, |redhat enterprise linux|
   * - ``slackware``
     - |slackware|
   * - ``suse``
     - |suse|, |suse els|

For example:

.. code-block:: ruby

   platform_family?("gentoo")

or:

.. code-block:: ruby

   platform_family?("slackware", "suse", "arch")

.. note:: ``platform_family?`` will default to ``platform?`` when ``platform_family?`` is not explicitly defined.

