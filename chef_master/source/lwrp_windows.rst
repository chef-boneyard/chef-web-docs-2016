=====================================================
windows Lightweight Resources
=====================================================

The |cookbook windows| cookbook is used to configure auto run, batch, reboot, enable built-in operating system packages, configure |windows| packages, reboot machines, and more.

The |cookbook windows| cookbook contains the following resources: ``windows_auto_run``, ``windows_batch``, ``windows_feature``, ``windows_package``, ``windows_path``, ``windows_reboot``, ``windows_registry``, ``windows_shortcut``, and ``windows_zipfile``.

.. warning:: The |resource batch| resource was added to |chef client| 11-6 as a core resource. In general, it is recommended to use the |resource batch| resource instead of the ``windows_batch`` resource included in the |cookbook windows| cookbook whenever possible, including updating any existing recipes that may be using the older lightweight resource in favor of the newer resource.

.. warning:: The |resource package_windows| resource was added to the |chef client| 12-0 as a core resource. In general, it is recommended to use the |resource package_windows| resource instead of the ``windows_package`` resource included in the |cookbook windows| cookbook whenever possible, including updating any existing recipes that may be using the older lightweight resource in favor of the newer resource.

.. warning:: The |resource reboot| resource was added to the |chef client| 12-0 as a core resource. In general, it is recommended to use the |resource reboot| resource instead of the ``windows_reboot`` resource included in the |cookbook windows| cookbook whenever possible, including updating any existing recipes that may be using the older lightweight resource in favor of the newer resource.

.. note:: Please see the documentation for the resources contained within the |cookbook windows| cookbook on |github|: https://github.com/chef-cookbooks/windows.
