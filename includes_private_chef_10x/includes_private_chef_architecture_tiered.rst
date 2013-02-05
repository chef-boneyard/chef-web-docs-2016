.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Tiered

In a Tiered topology, your Private Chef environment will run on multiple servers, but the back-end datastore layer will live on a single host. No highly available data storage is provided on the back-end host, though the front-end layer can be scaled horizontally. This topology may be of interest for environments that wish to provide their own methods for backup and data redundancy.

Opscode recommends that most environments considering a Tiered topology should consider using the High Availability topology for data redundancy, which is supported by Opscode Support.

Hosts

The Tiered topology is assumed to be used in a production environment. Small hosts can be used for the front-end layer if necessary, but the back-end host in particular should be a production grade system with at least 8 cores and 16GB of RAM. The full specification recommendations are listed in the installation guide.

Backups

Tiered Private Chef is expected to be a production configuration; so we’d expect you to back up the data in the back-end datastore on a regular basis. This can be accomplished using LVM snapshots or with a third-party backup solution supported by your team. The front-end web tier does not retain data, and for most environments we expect that reinstalling a web host would be easier than restoring from a backup.

The keys that the web tier is required to use to access the data tier are stored in /etc/opscode. These files must be copied from the back-end host to any front-end that will be accessing it. Your backup plans should include keeping a copy of these files available in case the back-end has to be restored.

The rest of the data written and used by the Private Chef server is stored in /var/opt/opscode on your back-end host.

Without a backup scheme, losing the back-end server will require you to recreate your organizations, users, and user pem files, in addition to re-uploading your cookbooks and other files from your source code management system.

Scaling

The tiered topology for Private Chef is designed to give you some flexibility around the way you scale your Private Chef server. The front-end can be scaled horizontally to N hosts for better API availability. The single back-end server can be vertically scaled for IO performance if needed.


