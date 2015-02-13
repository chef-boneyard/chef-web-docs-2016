.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Name things uniformly for their system and component. For example:

* attributes: ``node['foo']['bar']``
* recipe: ``foo::bar``
* role: ``foo-bar``
* directories: ``foo/bar`` (if specific to component), ``foo`` (if not). For example: ``/var/log/foo/bar``.

Name attributes after the recipe in which they are primarily used. e.g. ``node['postgresql']['server']``.