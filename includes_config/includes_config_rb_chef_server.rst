.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef server rb| file contains all of the non-default configuration settings used by the |chef server osc| server. (The default settings are built-in to the |chef server| configuration and should only be added to the |chef server rb| file to apply non-default values.) These configuration settings are processed when the ``chef-server-ctl reconfigure`` command is run, such as immediately after setting up the |chef server osc| server or after making a change to the underlying configuration settings after the server has been deployed.
