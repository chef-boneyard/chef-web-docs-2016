.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cookbook``
     - |cookbook lwrp daemontools_service|
   * - ``directory``
     - Required. |directory lwrp daemontools_service|
   * - ``env``
     - |env lwrp daemontools_service|
   * - ``finish``
     - |finish_script| Default value: ``nil``.
   * - ``group``
     - |group lwrp daemontools_service|
   * - ``log``
     - |log lwrp daemontools_service|
   * - ``owner``
     - |owner directory_service|
   * - ``service_name``
     - |name service|
   * - ``template``
     - |template lwrp daemontools_service|
   * - ``variables``
     - |variables passed_to_template| Default value: ``{}``.