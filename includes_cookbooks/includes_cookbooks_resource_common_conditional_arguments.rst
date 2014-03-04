.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following arguments can be used with the ``not_if`` or ``only_if`` guard:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Argument
     - Description
   * - ``:user``
     - Use to specify the user that a command will run as. For example:

       .. code-block:: ruby

          not_if "grep adam /etc/passwd", :user => 'adam'

   * - ``:group``
     - Use to specify the group that a command will run as. For example:

       .. code-block:: ruby

          not_if "grep adam /etc/passwd", :group => 'adam'

   * - ``:environment``
     - Use to specify a |ruby hash| of environment variables to be set. For example:

       .. code-block:: ruby

          not_if "grep adam /etc/passwd", :environment => { 'HOME' => "/home/adam" }

   * - ``:cwd``
     - Use to set the current working directory before running a command. For example:

       .. code-block:: ruby

          not_if "grep adam passwd", :cwd => '/etc'

   * - ``:timeout``
     - Use to set a timeout for a command. For example:

       .. code-block:: ruby

          not_if "sleep 10000", :timeout => 10