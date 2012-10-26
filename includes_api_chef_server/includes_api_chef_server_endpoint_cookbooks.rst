.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


In order to minimize storage and the amount of time required to iterate in the modify-upload-test cycle, cookbooks only require that files with checksums the system has not yet seen be uploaded. To accomplish this, a cookbook version's component files (each with its own particular checksum) are uploaded using the sandbox API. These checksums are then used in the version's manifest in records that include the component file's description (name, specificity, etc.), as well as its checksum and a URL from which to retrieve the file's contents. This is why you will see only the files that you have updated get uploaded when doing a "knife cookbook upload COOKBOOK_NAME".

The /cookbooks endpoint has the following methods: GET.
