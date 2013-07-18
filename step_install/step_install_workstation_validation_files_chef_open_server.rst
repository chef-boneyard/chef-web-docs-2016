.. This is an included how-to. 


For a workstation that will interact with the open source |chef server|, do the following:

* Create a |knife rb| file. This `configuration file <http://docs.opscode.com/config_rb_knife.html>`_ must be created by running the ``knife configure --initial`` command on the machine that will be run as a workstation. The ``validation_key`` attribute in the |knife rb| file must specify the path to the validation key. The ``validation_client_name`` attribute defaults to ``chef-validator`` (which is the |chef validator pem| private key created by the open source |chef server| on startup). When prompted for the URL for the |chef server|, use the |fully qualified domain name| for the |chef server|.
* Create a |user pem| file. (This private key is created at the same time as the |knife rb| file from the ``knife configure --initial`` command.)
* Find the |chef validator pem| file on the open source |chef server|. This private key is created by the open source |chef server| on startup and is located in the ``/etc/chef-server`` folder on the server after it is created.

These files will be moved into the |chef repo hidden| directory, which is a hidden directory that must be created in the |chef| repository.


