.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To prevent re-downloading files that are already present on a node, use one of the following attributes in the recipe: ``checksum`` and/or ``use_conditional_get``.

* The ``checksum`` attribute will ask the |chef client| to compare the checksum for the local file to the one at the remote location. If they match, the |chef client| will not re-download the file. Using a local checksum for comparison requires that the local checksum is the correct checksum. The desired approach just depends on the desired workflow. 
* The ``use_conditional_get`` attribute will have the |chef client| use a conditional ``GET`` to ask the remote server if the file is new. If the file is new, the |chef client| will re-download the file. Using the conditional ``GET`` requires that the remote server be configured to support the request.

For example, if a node requires a new file every day, using the checksum approach would require that the local checksum be updated and/or verified every day as well, in order to ensure that the local checksum was the correct one. Using a conditional ``GET`` in this scenario will greatly simplify the management required to ensure files are being updated accurately.