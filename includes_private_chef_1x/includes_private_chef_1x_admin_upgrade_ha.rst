.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The High Availability upgrade process is substantially more complicated than a Standalone upgrade. Systems must be upgraded in a specific order, and key material generated during the first install must be copied around manually to the other nodes in the cluster by the user performing the upgrade. Also it is important to validate that services are down and kill any stray processes (this is for upgrading from old builds prior to 1.1.10).

