.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource yum_package| resource is used to install, upgrade, and remove packages with |yum| for the |redhat| and |centos| platforms. The |resource yum_package| resource is able to resolve ``provides`` data for packages much like |yum| can do when it is run from the command line. This allows a variety of options for installing packages, like minimum versions, virtual provides, and library names.