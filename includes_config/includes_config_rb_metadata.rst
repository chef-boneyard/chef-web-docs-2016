.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|config rb metadata| Metadata is compiled whenever a cookbook is uploaded to the |chef server| or when the ``knife cookbook metadata`` subcommand is run. |knife| creates a |metadata rb| file automatically whenever the ``knife cookbook create`` subcommand is run. In general, editing metadata should only be done using the |metadata rb| file, and then either by uploading the cookbook in which that |metadata rb| file is located to the |chef server| or by asking the |chef server| to recompile the metadata into |json| data.

.. note:: .. include:: ../../includes_notes/includes_notes_metadata_json.rst

