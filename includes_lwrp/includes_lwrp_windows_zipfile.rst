.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Most versions of |windows| do not provide a native command-line utility that can be used to manage compressed files. The |lwrp windows zipfile| lightweight resource is a |ruby| implementation that allows |zip| files to be managed in |windows|. Use the ``not_if`` and ``only_if`` meta parameters as attributes to guard the use of this resource for idempotence. If these parameters are not used, actions could be taken against every |zip| file during every |chef client| run.
