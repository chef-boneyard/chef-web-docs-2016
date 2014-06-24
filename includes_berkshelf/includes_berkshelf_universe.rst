.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The universe is the known collection of cookbooks that have been uploaded to |supermarket|. The universe is accessed from the ``/universe`` endpoint in the |api cookbooks site|. This endpoint returns the known collection of cookbooks as |json| data organized by cookbook, then by cookbook version, and then a dependency graph that lists each dependency a cookbook version may have on other cookbooks or cookbook versions.