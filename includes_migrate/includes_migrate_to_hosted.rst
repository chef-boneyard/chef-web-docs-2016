.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

Migrating from using |chef open server| to |chef hosted| can be done in a few simple steps. Two custom |knife| plugins can be installed to help with the export of data from the |chef open server| and the import of that data to the |chef hosted| server. Keep using the same repository or start a new one. Once the |chef hosted| server is ready to go, nodes can be registered with |chef hosted|, bootstrapped (to run the |chef client|), and then be configured and managed by |chef|.

