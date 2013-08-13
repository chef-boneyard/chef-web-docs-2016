.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cookbook``
     - |cookbook template_location|
   * - ``directory``
     - Required. |directory daemontools|
   * - ``env``
     - |create_env_directory| Default value: ``{}``.
   * - ``finish``
     - |finish_script| Default value: ``nil``.
   * - ``group``
     - |group lwrp daemontools_service|
   * - ``log``
     - |use custom_log_script| Default value: ``nil``.
   * - ``owner``
     - |owner directory_service|
   * - ``service_name``
     - |name service|
   * - ``template``
     - |template daemontools| Default value: ``NAME``.
   * - ``variables``
     - |variables passed_to_template| Default value: ``{}``.