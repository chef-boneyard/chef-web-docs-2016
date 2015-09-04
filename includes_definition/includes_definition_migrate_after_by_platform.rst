.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The migrated custom resource still has some complexity and can be further simplified:

* Remove the ``if``, ``case``, and ``when`` statements (that exist primarily because of the |solaris| platform)
* Split the migrated custom resource into three platform-specific custom resources
