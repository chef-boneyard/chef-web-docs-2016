.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|config rb client| This file is the default configuration file and is loaded every time the |chef client| executable is run. The |chef client| executable can be run as a daemon. 

On |unix|- and |linux|-based machines, the configuration file is located at: |path chef client rb|. On |windows| machines, the configuration file is located at |path chef client rb windows|. When a |client rb| file is present in this directory, the settings contained within that file will override the default configuration settings.