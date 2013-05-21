.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Where a resource represents a piece of the system, its current state, and its desired state, a provider defines the steps that are needed to bring that piece of the system from its current state into the desired state. These steps are de-coupled from the request itself. The request is made in a recipe and is defined by a lightweight resource. The steps are defined by a lightweight provider. This is important because the steps may be different depending on the platform of the system on which those steps are taken. For example, the steps required to install a package on the |redhat| platform are different from the |ubuntu| platform. |redhat| uses the |redhat yum| package installer, while |ubuntu| uses |apt|. The lightweight provider needs to handle both scenarios (in addition to, perhaps, many others).


