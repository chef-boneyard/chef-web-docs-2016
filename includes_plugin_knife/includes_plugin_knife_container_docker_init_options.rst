.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-b``, ``--berksfile``
   Use to generate a BERKSFILE based on the run-list specified by the ``--run-list`` option.

``--cookbook-path PATH[:PATH]``
   The directory in which cookbooks are located. This may be a colon-separated path.

``-d DOCKERFILE_PATH``, ``--force DOCKERFILE_PATH``
     Use to specify the path to the DOCKERFILE.

``--environments-path PATH[:PATH]``
   The directory in which environments are located. This may be a colon-separated path.

``-f [REPO/]IMAGE[:TAG]``, ``--from [REPO/]IMAGE[:TAG]``
   Use to specify the image to use as the ``FROM`` value in a DOCKERFILE.

``--node-path PATH[:PATH]``
   The directory in which nodes are located. This may be a colon-separated path.

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--role-path PATH[:PATH]``
   The directory in which roles are located. This may be a colon-separated path.

``--server-url URL``
   |url chef_server|

``--validation-client-name NAME``
   The name of the validation client, typically a client named |chef validator|.

``--validation-key PATH``
   The path to the validation key used by the client, typically a file named |chef validator pem|.

``-z``, ``--local-mode``
   |local_mode| This will include and use a local |chef repo| when building the DOCKER image.
