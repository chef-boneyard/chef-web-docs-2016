.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A resource is a statement of configuration policy that:

* Describes the desired state of a piece within your infrastructure
* Declares the steps needed to bring that item to the desired state
* Specifies a resource type---such as ``package``, ``template``, or ``service`` 
* Lists additional details (also known as attributes), if necessary
* Tells the |chef client| which action to take

Resources are grouped into recipes, which describe working configurations. For example, a package to install, the location of a template from which to build a file, and a service to be started.
