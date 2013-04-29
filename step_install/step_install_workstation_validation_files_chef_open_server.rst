.. This is an included how-to. 


For the open source |chef server|, do the following:

* |knife rb|. This :doc:`configuration file </config_rb_knife>` must be created by running the ``knife configure --initial`` command from the server on which the open source |chef server| is installed. The ``validation_key`` attribute in the |knife rb| file must specify the path to the validation key. The ``validation_client_name`` attribute defaults to ``chef-validator`` (which is the |chef validator pem| private key created by the open source |chef server| on startup).
* |chef validator pem|. This private key is created by the open source |chef server| on startup and is located in the ``/etc/chef-server`` folder on the server after it is created.
* |user pem|. This private key is created by running the ``knife configure --initial`` command.
