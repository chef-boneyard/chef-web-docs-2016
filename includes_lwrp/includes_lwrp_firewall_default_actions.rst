.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following actions:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Action
     - Description
   * - ``:disable``
     - Use to disable a firewall. Rules will be de-activated and the node will be put into an unprotected state.
   * - ``:enable``
     - Use to enable a firewall. Rules that have been defined for that firewall will be activated.
   * - ``:reset``
     - Use to reset a firewall. Rules will be de-activated and the node will be put into the default state. This action does not enable or disable a firewall.
