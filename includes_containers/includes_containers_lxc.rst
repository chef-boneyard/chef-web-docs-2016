.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|linux lxc|---|linux| containers---eliminate the need for a hypervisor by leveraging a |linux| kernel feature called control groups. Control groups allow a |linux|-based operating system to isolate CPU, memory, network, file system volumes, and processes into a userspace commonly referred to as a container. This approach to virtualization allows a single operating system to host many working configurations, with each working configuration running in isolation from the other containers and the host itself, without the need for a hypervisor or a guest operating system. Each container comprises a working configuration---or application---and all of its dependencies that are not already available from the host operating system or from another container.
