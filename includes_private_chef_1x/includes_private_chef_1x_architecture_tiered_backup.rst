.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Tiered |chef private| is expected to be a production configuration; so we’d expect you to back up the data in the back-end datastore on a regular basis. This can be accomplished using |lvm| snapshots or with another third-party backup solution. The front-end web tier does not retain data, and for most environments we expect that reinstalling a web host would be easier than restoring from a backup.

The keys that the web tier is required to use to access the data tier are stored in ``/etc/opscode``. These files must be copied from the back-end host to any front-end that will be accessing it. Your backup plans should include keeping a copy of these files available in case the back-end has to be restored.

The rest of the data written and used by the |chef private| server is stored in ``/var/opt/opscode`` on your back-end host.

Without a backup scheme, losing the back-end server will require you to recreate your organizations, users, and user ``.pem`` files, in addition to re-uploading your cookbooks and other files from your source code management system.
