.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 


This subcommand has the following options:

``-c``, ``--concurrency``
   Use to specify the maximum number of concurrent instances against which KITCHEN will run. Default: ``9999`` (all instances, effectively).

``-l``, ``--log-level``
   The level of logging that will be displayed. Options (in order of priority): ``:debug``, ``:info``, ``:warn``, ``:error``, and ``:fatal``. Default: ``info``.

``PLATFORMS``
   Use to run KITCHEN against one (or more) platforms listed in the KITCHEN.YML file. Use ``all`` to run KITCHEN against all platforms. Use a RUBY regular expression to glob two (or more) platforms into a single run. For example, if the KITCHEN.YML file contains the following:

   .. code-block:: javascript
   
       - name: centos-5.10
       - name: centos-6.5
       - name: fedora-19
       - name: ubuntu-1004
       - name: ubuntu-1204
       - name: ubuntu-1310
   
   then a regular expression like ``(04|5)`` would run KITCHEN against ``centos-5.10``, ``centos-6.5``, ``ubuntu-1004``, and ``ubuntu-1204``. A regular expression like ``(ubuntu)`` would run KITCHEN against ``ubuntu-1004``, ``ubuntu-1204``, and ``ubuntu-1310``. A regular expression like ``(fedora-19)`` would run KITCHEN against only ``fedora-19``. Default: ``all``.



