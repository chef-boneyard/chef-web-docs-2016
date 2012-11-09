.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``current_options``
     - 
   * - ``default_options``
     - 
   * - ``file_writer``
     - 
   * - ``full_path``
     - 
   * - ``name``
     - The name of the port for which a port options file will be modified.
   * - ``options``
     - A hash with the option name as the key and a boolean value. For example: ``"APACHE" => true``.
   * - ``source``
     - A template that is used to create the port options file. For example: ``source "freebsd-php5-options.erb"``.