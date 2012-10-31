.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|config rb metadata| Metadata is stored in a file called |metadata rb| that lives at the top of each cookbook's directory. When |knife| is used to create a cookbook, a |metadata rb| file is created automatically. Metadata is compiled whenever the following happens: a cookbook is uploaded to the |chef server| and the ``knife cookbook metadata`` sub-command is run. In general, editing metadata should only be done using the |metadata rb| file and then either uploading the cookbook to the |chef server| or by asking the |chef server| to recompile the metadata into JSON data.

.. note:: |note metadata json|

