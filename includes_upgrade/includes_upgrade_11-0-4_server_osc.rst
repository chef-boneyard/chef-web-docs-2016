.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

.. warning:: This section applies only to upgrading standalone configurations of the |chef server osc| server.

The upgrade process for a standalone configuration |chef server osc| server has been simplified (starting with upgrades from version 11.0.4 to the current version). This process allows an in-place upgrade of the server components and applies all of the necessary SQL changes and updates without having to reinstall any components and without having to re-import data.

.. warning:: Back up the server data before running the ``upgrade`` command. Even though it's not a requirement (because it's an in-place upgrade) and even though there is no step for "restoring data" as part of the upgrade process, in the event something unexpected does happen, it's important to be able to restore this data to the server.
