.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A cookbook version represents a specific set of functionality that is different from the cookbook on which it is based. A version may exist for many reasons, such as ensuring that the correct version of third-party component is being used appropriately or providing an update to a cookbook that fixes a bug or adds a new improvement. A cookbook version can be defined using syntax and operators, it can be associated with environments, cookbook metadata, or run-lists, and it can be frozen (to prevent unwanted updates from being made). A cookbook version is handled just a cookbook with regard to how the repository sees a cookbook version, how cookbook versions are stored on the |chef server|, how cookbook versions are pushed out to nodes, and how cookbook versions are used during a |chef client| run.

