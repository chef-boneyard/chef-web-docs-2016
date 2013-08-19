.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource cookbook_file| resource is used to transfer files from a sub-directory of the ``files/`` directory in a cookbook to a specified path that is located on the host running the |chef client| or |chef solo|. The file in a cookbook is selected according to file specificity, which allows different source files to be used based on the hostname, host platform (operating system, distro, or as appropriate), or platform version. Files that are located under ``COOKBOOK_NAME/files/default`` can be used on any platform.
