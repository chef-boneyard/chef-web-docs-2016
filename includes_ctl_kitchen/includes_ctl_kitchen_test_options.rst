.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for test-kitchen.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``--auto-init``
   |kitchen_auto_init| Default: ``false``.

``-c NUMBER``, ``--concurrency NUMBER``
   |concurrency| Use this option to limit the number of instances that are tested concurrently. For example, ``--concurrency 6`` will set this limit to six concurrent instances. Default: ``9999`` (all instances, effectively).

``-d``, ``--destroy``
   |kitchen_destroy| Default: ``passing``.

``-l``, ``--log-level``
   |log_level| Options (in order of priority): ``:debug``, ``:info``, ``:warn``, ``:error``, and ``:fatal``. Default: ``info``.

``PLATFORMS``
   |kitchen_platforms|

   .. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_common_option_platforms.rst
