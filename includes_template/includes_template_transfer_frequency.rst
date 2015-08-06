.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |chef client| caches a template when it is first requested. On each subsequent request for that template, the |chef client| compares that request to the template located on the |chef server|. If the templates are the same, no transfer occurs.
