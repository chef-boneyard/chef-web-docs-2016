=====================================================
Tiered
=====================================================

.. warning:: This documentation is about |chef private|, an older version of the |chef server|. For documentation about the current version of the |chef server|, see http://docs.getchef.com/server/.

In a Tiered topology, your |chef private| environment will run on multiple servers, but the back-end datastore layer will live on a single host. No highly available data storage is provided on the back-end host, though the front-end layer can be scaled horizontally. This topology may be of interest for environments that wish to provide their own methods for backup and data redundancy.

|company_name| recommends that most environments considering a Tiered topology should consider using the High Availability topology for data redundancy, which is supported by |company_name| Support.

Hosts
=====================================================
The Tiered topology is assumed to be used in a production environment. Small hosts can be used for the front-end layer if necessary, but the back-end host in particular should be a production grade system with at least 8 cores and 16GB of RAM. The full specification recommendations are listed in the installation guide.

Backup
=====================================================
Tiered |chef private| is expected to be a production configuration; so we’d expect you to back up the data in the back-end datastore on a regular basis. This can be accomplished using |lvm| snapshots or with another third-party backup solution. The front-end web tier does not retain data, and for most environments we expect that reinstalling a web host would be easier than restoring from a backup.

The keys that the web tier is required to use to access the data tier are stored in ``/etc/opscode``. These files must be copied from the back-end host to any front-end that will be accessing it. Your backup plans should include keeping a copy of these files available in case the back-end has to be restored.

The rest of the data written and used by the |chef private| server is stored in ``/var/opt/opscode`` on your back-end host.

Without a backup scheme, losing the back-end server will require you to recreate your organizations, users, and user ``.pem`` files, in addition to re-uploading your cookbooks and other files from your source code management system.

Scaling
=====================================================
The tiered topology for |chef private| is designed to give you some flexibility around the way you scale your |chef private| server. The front-end can be scaled horizontally to N hosts for better API availability. The single back-end server can be vertically scaled for I/O performance if needed.
