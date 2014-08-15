.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This argument has the following options:

``-b``, ``--berksfile``
   |generate_berksfile| This option requires |berkshelf|. Default value: ``false``.

``--cookbook-path PATH[:PATH]``
   |directory cookbooks| This may be a colon-separated path.

``-d DOCKERFILES_PATH``, ``--dockerfiles-path DOCKERFILES_PATH``
   |directory dockerfile_context|

``--environment-path PATH[:PATH]``
   |directory environments| This may be a colon-separated path.

``-f [REPO/]IMAGE[:TAG]``, ``--from [REPO/]IMAGE[:TAG]``
   |docker base_image| Default value: ``chef/ubuntu-12.04:latest``.

``--force``
   |force_docker_contexts|

``--include-credentials``
   |include_credentials|

``--node-path PATH[:PATH]``
   |directory nodes| This may be a colon-separated path.

``--role-path PATH[:PATH]``
   |directory roles| This may be a colon-separated path.

``-r RUN_LIST``, ``--run-list RUN_LIST``
   |run-list|

``--secret-file PATH``
   |secret-file|

``--server-url URL``
   |url chef_server|

``--trusted-certs-dir PATH``
   |directory trusted_certificates|

``--validation-client-name NAME``
   |name validation_client|

``--validation-key PATH``
   |path validation_client|

``-z``, ``--local-mode``
   |local_mode| This will include and use a local |chef repo| when building the |docker| image.
