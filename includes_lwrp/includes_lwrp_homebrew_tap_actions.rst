.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:install``
     - Default. |resource action install package| This action is inherited from the |resource package| resource resource.
   * - ``:purge``
     - |resource action purge package| This action is inherited from the |resource package| resource resource. For |homebrew|, this is effectively the same as the ``:remove`` action.
   * - ``:remove``
     - |resource action remove package| This action is inherited from the |resource package| resource resource.
   * - ``:tap``
     - Use to enable a formula |homebrew| repository located on |git|.
   * - ``:upgrade``
     - |resource action upgrade package| This action is inherited from the |resource package| resource resource. For |homebrew|, there isn't an upgrade, rather |homebrew| performs the ``:install`` action every time, effectively upgrading a package when it is newer than the one installed previously.
   * - ``:untap``
     - Use to disable a formula |homebrew| repository located on |git|.

