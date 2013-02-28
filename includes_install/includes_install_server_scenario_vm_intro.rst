.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The following example walks through the process of setting up the open source version of |chef server 11| in a virtual machine for the purpose of demoing |chef|. Any type virtual machine software can be used to run the |chef server|; however, this example is based on the following assumptions:

* A computer is running |vmware fusion 5x|
* A virtual machine is configured in |vmware fusion 5x| in which a 64-bit version of |ubuntu| 12.04 is installed
* |ubuntu| is installed with the default configuration (so that it has a very smal footprint in the virtual machine)
* The |chef server| will use HTTPS to access the |chef server| from a browser that is hosted on the same computer on which the virtual machine is located
* The |chef server| is the only application installed on the virtual machine, other than the operating system

The steps below will start with downloading the package for |chef server 11| to the virtual machine. These steps are nearly identical for any installation of |chef server 11| no matter the type of software used to host the virtual machine.
