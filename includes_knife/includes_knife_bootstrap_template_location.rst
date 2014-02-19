.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A custom bootstrap template file (``template_filename.erb``) must be located in a ``bootstrap/`` directory, typically located within the ``~/.chef/`` directory.

Use the ``--distro`` option with the ``knife bootstrap`` subcommand to specify the bootstrap template file. This location is configurable when the following settings are added to the |knife rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``knife[:distro]``
     - |distro|
   * - ``knife[:template_file]``
     - |path bootstrap_template|

