.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``service_name``
     - |name service| A recipe that uses the |lwrp bluepill service| lightweight resource must contain a template resource for the pill and it must be named ``NAME.pill.erb`` where ``NAME`` is the ``service_name`` attribute.
   * - ``supports``
     - |supports service| Default value: ``{ :restart => true, :status => true }``.
   * - ``variables``
     - |variables passed_to_template|
