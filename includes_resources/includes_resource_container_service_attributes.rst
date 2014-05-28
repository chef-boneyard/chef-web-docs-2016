.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``command``
     - Use to specify the command to be run.
   * - ``service_dir``
     - The directory in which the |runit| service is located. Default value: ``Chef::Container::Runit::SERVICE_DIR``. ``SERVICE_DIR`` is an alias that maps to ``'/opt/chef/service'``.
   * - ``service_name``
     - The name of the service. Default value: the ``name`` of the resource block (see Syntax section above).
   * - ``sv_bin``
     - The directory in which the |runit| service's ``sv`` tool is located. Default value: ``Chef::Container::Runit::SV_BIN``. ``SV_BIN`` is an alias that maps to ``'/opt/chef/embedded/bin/sv'``.