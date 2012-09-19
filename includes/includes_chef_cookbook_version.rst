.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A cookbook version represents a specific set of functionality that is different from the cookbook on which it is based. A version may exist for many reasons, such as for ensuring that the correct versions of third-party components are being used or to provide an update to a cookbook that fixes previous issues or adds new improvements. A cookbook version can be defined using syntax and operators, it can be associated with environments, cookbook metadata, or run-lists, and it can be frozen (to prevent unwanted updates from being made). A cookbook version is a cookbook, from the perspective of the repository and how cookbooks are stored on the |chef server| and pushed out to one (or more) nodes.

