.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource cookbook file| resource is used to transfer files from a sub-directory of the ``files/`` directory in a cookbook to a specified path on the host running the |chef client| or |chef solo|. The file in a cookbook is selected according to file specificity, which allows different source files to be used based on the hostname, host platform (operating system, distro, or as appropriate), or platform version. Place files under COOKBOOK_NAME/files/default to use them on any platform.
