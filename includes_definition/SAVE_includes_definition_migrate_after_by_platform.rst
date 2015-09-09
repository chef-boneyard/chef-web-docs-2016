.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. Keep this example---it's useful for showing the progression of a pre-12.5 definition translated to a post-12.5 custom resource, but also to show how the custom resource patterns can be used to remove complexity from resources by eliminating logic, like if statements. These may get re-published someday.

The migrated custom resource still has some complexity and can be further simplified:

* Remove the ``if``, ``case``, and ``when`` statements (that exist primarily because of the |solaris| platform)
* Split the migrated custom resource into three platform-specific custom resources
