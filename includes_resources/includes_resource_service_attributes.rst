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

       |command service_init| Use ``init_command`` to prevent the need to specify overrides for the ``start_command``, ``stop_command``, and ``restart_command`` attributes. When this attribute is not specified, the |chef client| will use the default init command for the service provider being used.
   * - ``pattern``
     - **Ruby Type:** String

       |pattern process_table| Default value: ``service_name``.
   * - ``priority``
     - **Ruby Types:** Integer, String, Hash

       |debian| platform only. |priority service| May be an integer or a |ruby hash|. An integer is used to define the start run levels; stop run levels are then 100-integer. A |ruby hash| is used to define values for specific run levels. For example, ``{ 2 => [:start, 20], 3 => [:stop, 55] }`` will set a priority of twenty for run level two and a priority of fifty-five for run level three.
   * - ``provider``
     - **Ruby Type:** Chef Class

       Optional. |provider resource_parameter| |see providers|
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