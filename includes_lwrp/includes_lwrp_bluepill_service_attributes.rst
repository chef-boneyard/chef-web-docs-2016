.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``service_name``
     - The name of the service. A recipe that uses the |lwrp bluepill service| lightweight resource must contain a template resource for the pill and it must be named ``NAME.pill.erb`` where ``NAME`` is the ``service_name`` attribute.
   * - ``supports``
     - A list of attributes that controls how the |chef client| will attempt to manage a service: ``:restart``, ``:reload``, ``:status``. For ``:restart``, the init script or other service provider can use a restart command; if ``:restart`` is not specified, the |chef client| will attempt to stop and then start a service. For ``:reload``, the init script or other service provider can use a reload command. For ``:status``, the init script or other service provider can use a status command to determine if the service is running; if ``:status`` is not specified, the |chef client| will attempt to match the ``service_name`` against the process table as a regular expression, unless a pattern is specified as a parameter attribute. Default value: ``{ :restart => true, :status => true }``.
   * - ``variables``
     - A |ruby hash| of variables that are passed into a |ruby| template file.
