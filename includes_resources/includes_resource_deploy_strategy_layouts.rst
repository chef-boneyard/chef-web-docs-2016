.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource deploy| resource expects an application to be structured like a |ruby on rails| application, but the layout can be modified to meet custom requirements as needed.

The following custom application layouts are available:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Layout
     - Description
   * - ``symlink_before_migrate``
     - |layout symlink_before_migrate resource deploy|
   * - ``purge_before_symlink``
     - |layout purge_before_symlink resource deploy|
   * - ``create_dirs_before_symlink``
     - |layout create_dirs_before_symlink resource deploy|
   * - ``symlinks``
     - |layout symlinks resource deploy|
