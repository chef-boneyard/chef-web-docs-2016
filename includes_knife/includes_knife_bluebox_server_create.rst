.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``server create`` argument is used to create a new |bluebox| cloud instance. A comma-separated run-list of roles and/or recipes must be specified.

This argument has the following syntax::

   knife bluebox server create [RUN_LIST...] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-b LB_APP``, ``--load_balancer LB_APP``
     - |load-balancer|
   * - ``--block_startup_timeout TIME``
     - |block-startup-timeout|
   * - ``-d DISTRO``, ``--distro DISTRO``
     - |distro|
   * - ``--disable-bootstrap``
     - |disable-bootstrap|
   * - ``-f FLAVOR``, ``--flavor FLAVOR``
     - |flavor|
   * - ``-i IDENTITY_FILE``, ``--identity-file IDENTITY_FILE``
     - |identity-file|
   * - ``-i IMAGE``, ``--image IMAGE``
     - |image|
   * - ``-N NAME``, ``--node-name NAME``
     - |node-name|
   * - ``-P PASSWORD``, ``--ssh-password PASSWORD``
     - |ssh-password|
   * - ``-U KEY``, ``--username USERNAME``
     - |username bluebox|

For example, to xxxxx, enter:

.. code-block:: bash

   $ xxxxx



