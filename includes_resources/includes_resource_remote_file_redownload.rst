.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To prevent the |chef client| from re-downloading files that are already present on a node, use one of the following attributes in a recipe: ``use_conditional_get`` (default) or ``checksum``.

* The ``use_conditional_get`` attribute is the default behavior of the |chef client|. If the remote file is located on a server that supports |etags| and/or |if_modified_since| headers, the |chef client| will use a conditional ``GET`` to determine if the file has been updated. If the file has been updated, the |chef client| will re-download the file.

* The ``checksum`` attribute will ask the |chef client| to compare the checksum for the local file to the one at the remote location. If they match, the |chef client| will not re-download the file. Using a local checksum for comparison requires that the local checksum be the correct checksum. 

The desired approach just depends on the desired workflow. For example, if a node requires a new file every day, using the checksum approach would require that the local checksum be updated and/or verified every day as well, in order to ensure that the local checksum was the correct one. Using a conditional ``GET`` in this scenario will greatly simplify the management required to ensure files are being updated accurately.
