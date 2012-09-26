.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp dmg package| lightweight resource is used to install applications from |mac os x| |apple disk image| files. This lightweight resource will install a package by retrieving the file from a remote URL, mounting the file using the HDI driver backing store service (hdid), copying the application directory to the specified directory, detaching the image (using ``hdiutil``), and then storing the file in the ``Chef::Config[:file_cache_path]``.
