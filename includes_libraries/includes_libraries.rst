.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A library allows arbitrary |ruby| code to be included in a cookbook, either as a way of extending the classes that are built-in to the |chef client|---``Chef::Recipe``, for example---or for implementing entirely new functionality, similar to a mixin in |ruby|. A library file is a |ruby| file that is located within a cookbook's ``/libraries`` directory. Because a library is built using |ruby|, anything that can be done with |ruby| can be done in a library file.
