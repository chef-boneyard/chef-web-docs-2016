.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef client| uses a cache file to keep track of the order in which each revision of an application is deployed. If a re-deployment must be forced---by deleting the deployed code from a node, for example---the cache file must be deleted as well. The cache file is located in the default configuration at |path chef deploy cache file|.
