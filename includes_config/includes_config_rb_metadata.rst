.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Metadata is stored in a file called |metadata rb| that lives at the top of each cookbook's directory. When |knife| is used to create a cookbook, a |metadata rb| file is created automatically.

A |metadata rb| file is never interpreted directly. Rather, the |metadata rb| file provides a simple location to store and edit data that is then compiled by the |chef server| and stored as JSON data. Metadata is compiled whenever the following happens:

* A cookbook is uploaded to the |chef server|.
* The ``knife cookbook metadata`` sub-command is run.

In general, editing metadata should only be done using the |metadata rb| file and then either uploading the cookbook to the |chef server| or by asking the |chef server| to recompile the metadata into JSON data. 

.. note:: A |metadata json| file can be edited directly, should temporary changes be required. Any subsequent upload or action that generates metadata will cause the existing |metadata json| file to be overwritten with the newly-generated metadata. Therefore, any permanent change to metadata that is required should only be made in the |metadata rb| file.

