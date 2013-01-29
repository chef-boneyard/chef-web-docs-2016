.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``json_file`` option to serialize run status data to a |json| file located at ``/var/chef/reports``. This usage option automatically registers the ``Chef::Handler::JsonFile`` handler that is included within |chef|.