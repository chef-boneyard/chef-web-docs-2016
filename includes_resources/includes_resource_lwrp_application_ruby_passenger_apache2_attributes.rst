.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``params``
     - A hash of extra parameters that will be passed to a template file.
   * - ``server_aliases``
     - An array of server aliases.
   * - ``webapp_template``
     - The template used to render the virtual host configuration file. Default value: ``#{application name}.conf.erb``.
