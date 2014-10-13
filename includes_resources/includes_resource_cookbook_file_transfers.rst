.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


During a |chef client| run, the checksum for each local file is calculated and then compared against the checksum for the same file as it currently exists in the cookbook on the |chef server|. A file is not transferred when the checksums match. Only files that require an update are transferred from the |chef server| to a node.

