.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:mount``
     - Default. |resource action mount mount|
   * - ``:umount``
     - |resource action umount mount|
   * - ``:remount``
     - |resource action remount mount|
   * - ``:enable``
     - |resource action enable mount|
   * - ``:disable``
     - |resource action disable mount|

.. note:: Order matters when passing multiple actions. For example: ``action [:mount, :enable]`` ensures that the file system is mounted before it is enabled.
