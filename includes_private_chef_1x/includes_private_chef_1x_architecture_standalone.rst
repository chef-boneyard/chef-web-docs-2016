.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Standalone configurations are appropriate for small scale environments like proof of concept projects, dedicated fenced development environments, or when the host will be a virtual machine.

In a standalone configuration, all of the components of Private Chef are installed together. This machine need not be large, as any Private Chef environment that will contain a large dataset should be installed in the Tiered or High Availability configurations. The firewall requirements are also significantly reduced, since only HTTP and HTTPS need to be available to other hosts.
