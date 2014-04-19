.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``cookbook``
     - The cookbook in which a template files is located (if it is not located in the current cookbook).
   * - ``directory``
     - Required. The directory in which the service is set up.
   * - ``env``
     - Use to create an ``env`` directory for a service. The directory will contain files named for each environment variable that is required, with the contents of its value in a |ruby hash|. For more information about the ``env`` directory, see: http://cr.yp.to/daemontools/envdir.html. Default value: ``{}``.
   * - ``finish``
     - Indicates that a service has a finish script. Default value: ``nil``.
   * - ``group``
     - The name of the group for which access to service directory and scripts is granted.
   * - ``log``
     - Indicates whether a service has a custom logging script. Default value: ``nil``.
   * - ``owner``
     - The owner of a service directory and scripts.
   * - ``service_name``
     - The name of the service.
   * - ``template``
     - The name variable for the template files. The run script is set up by a template named ``sv-NAME-run.erb``. The log/run script is set up by a template named ``sv-NAME-log-run.erb``. The finish script is set up by a template named ``sv-NAME-finish.erb``. For each of these scripts, the ``NAME`` placeholder will be replaced by the value specified for this attribute. These templates should be located in the directory of a cookbook that uses this lightweight resource. Default value: ``NAME``.
   * - ``variables``
     - A |ruby hash| of variables that are passed into a |ruby| template file. Default value: ``{}``.