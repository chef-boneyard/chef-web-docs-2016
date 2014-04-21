=====================================================
windows Lightweight Resources
=====================================================

|cookbook name windows|

The |cookbook windows| cookbook contains the following resources: ``windows_auto_run``, ``windows_batch``, ``windows_feature``, ``windows_package``, ``windows_path``, ``windows_reboot``, ``windows_registry``, ``windows_shortcut``, and ``windows_zipfile``.

.. warning:: The |resource batch| resource was added to |chef 11-6| as a core resource. In general, it is recommended to use the |resource batch| resource instead of the ``windows_batch`` resource included in the |cookbook windows| cookbook whenever possible, including updating any existing recipes that may be using the older lightweight resource in favor of the newer resource.

.. note:: Please see the documentation for the resources contained within the |cookbook windows| cookbook on |github|: https://github.com/opscode-cookbooks/windows.
