.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Once created, an environment can be managed in several ways:

* Using |knife|, using the ``-E ENVIRONMENT_NAME`` option for the ``knife cookbook upload`` sub-command and argument.
* Using the |chef manager| (in |chef hosted|, |chef private|, or the open source |chef server|).
* Using |ruby| or |json| files that are stored in a version source control system and pushed to the |chef server|. This approach allows dynamically generated environment data (using |ruby|).

These workflows are mutually exclusive: only the most recent environment changes will be kept on the |chef server|, regardless of the source of those changes. All previous changes are overwritten when environment data is updated.

The settings for environments can be modified and environments can be integrated into the larger infrastructure by associating them with nodes, using recipes to call specific environment settings, and so on.

