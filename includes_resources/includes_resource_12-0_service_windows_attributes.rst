.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``init_command``
     - **Ruby Type:** String

       |command service_init| This is typically ``/etc/init.d/SERVICE_NAME``. The ``init_command`` attribute can be used to prevent the need to specify  overrides for the ``start_command``, ``stop_command``, and ``restart_command`` attributes. Default value: ``nil``.
   * - ``pattern``
     - **Ruby Type:** String

       |pattern process_table| Default value: ``service_name``.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter|
   * - ``reload_command``
     - **Ruby Type:** String

       |command service_reload|
   * - ``restart_command``
     - **Ruby Type:** String

       |command service_restart|
   * - ``service_name``
     - **Ruby Type:** String

       |name service| Default value: the ``name`` of the resource block. |see syntax|
   * - ``start_command``
     - **Ruby Type:** String

       |command service_start|
   * - ``startup_type``
     - **Ruby Type:** Symbol

       Use to specify the startup type for a |windows| service. Possible values: ``:automatic``, ``:disabled``, or ``:manual``. Default value: ``:automatic``.
   * - ``status_command``
     - **Ruby Type:** String

       |command service_status|
   * - ``stop_command``
     - **Ruby Type:** String

       |command service_stop|
   * - ``supports``
     - **Ruby Type:** Hash

       |supports service| Default value: ``{ :restart => false, :reload => false, :status => false }`` for all platforms (except for the |redhat| platform family, which defaults to ``{ :restart => false, :reload => false, :status => true }``.)
   * - ``timeout``
     - **Ruby Type:** Integer

       |windows| platform only. |timeout|
