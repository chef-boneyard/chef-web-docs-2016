.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When a cookbook_file resource is run, the |chef client| will calculate the checksum of each local file and then compare this against the checksum for that same file as it currently exists in the cookbook on the |chef server|. If the checksums match, that file is not transferred. Even though a cookbook may contain many files, only files that require an update are transferred from the |chef server| to a |chef client|.

