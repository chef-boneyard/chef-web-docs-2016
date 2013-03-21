.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

The |omnibus installer| is used to set up a |chef server|. The |omnibus installer| separates the installation of the |chef server| from the configuration. The |omnibus installer| uses a single command to install the |chef server| and all of its dependencies, including |erlang|, |ruby|, |rabbitmq|, |nginx|, and |postgresql|. The |omnibus installer| puts everything into a unique directory (/etc/chef-server/) so that the |chef server| will not interfere with other applications that may be running on the target machine. Once installed, the |chef server| a single configuration step.
