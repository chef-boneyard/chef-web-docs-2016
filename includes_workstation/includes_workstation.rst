.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A workstation is a computer that is configured to run |knife|, to synchronize with the |chef| repository, and interact with a single |chef server|. The workstation is the location from which most users of |chef| will do most of their work, including:

* Developing cookbooks and recipes (and authoring them using |ruby|)
* Keeping the |chef| repository synchronized with version source control
* Using |knife| to upload items from the |chef| repository to the |chef server|
* Configuring organizational policy, including defining roles and environments and ensuring that critical data is stored in data bags
* Interacting with nodes, as (or when) required, such as performing a bootstrap operation
