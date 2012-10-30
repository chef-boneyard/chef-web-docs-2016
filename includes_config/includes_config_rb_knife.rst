.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |knife rb| file is used to specify the repository-specific configuration details for the following executable: |chef exec knife|. This file is the default configuration file and is loaded every time this executable is run. The |chef exec knife| executable cannot be run as a daemon. The configuration file is located at: |path knife rb|. If a |knife rb| file is present in the |path knife rb secondary| directory in the |chef| repository, the settings contained within that file will override the default configuration settings.