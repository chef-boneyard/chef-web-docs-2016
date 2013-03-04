.. This is an included how-to. 


For the open source |chef server|, do the following:

* |knife rb|. This configuration file must be created by running the ``knife configure -i`` command from the server on which the open source |chef server| is installed. The ``validation_key`` attribute in the |knife rb| must contain the validation key. The ``validation_client_name`` attribute defaults to ``chef-validator`` (which is the |organization pem| private key created by the open source |chef server| on startup).
* |organization pem|. This private key is created by the open source |chef server| on startup and is located in the |path chef etc| folder on the server after it is created.
* |user pem|. This private key is created by running the ``knife configure --initial`` command.
