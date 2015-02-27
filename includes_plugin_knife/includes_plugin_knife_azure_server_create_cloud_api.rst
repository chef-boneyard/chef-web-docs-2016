.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``cloud-api`` option to bootstrap a machine in |azure|. The bootstrap operation will enable the guest agent to install, configure, and run the |chef client| on a node, after which the |chef client| is configured to run as a daemon/service. (This is a similar process to using the |azure portal|.)

|azure| maintains images of the |chef client| on the guest, so connectivity between the guest and the workstation from which the bootstrap operation was initiated is not required, after a ``cloud-api`` bootstrap is started.

During the ``cloud-api`` bootstrap operation, |knife| does not print the output of the |chef client| run like it does when the ``winrm`` and ``ssh`` options are used. |knife| reports only on the status of the bootstrap process: ``provisioning``, ``installing``, ``ready``, and so on, along with reporting errors.
