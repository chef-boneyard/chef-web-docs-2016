.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |client rb| file on that machine requires the following settings:

``deployment_group``
   This setting should be set to ``'$POLICY_NAME-local'``.

``policy_document_native_api``
   This setting should be set to ``false``.

``use_policyfile``
   This setting should be set to ``true``.

``versioned_cookbooks``
   This setting should be set to ``true``.
