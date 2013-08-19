.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource breakpoint| resource is used to add breakpoints to recipes in the same way as any other resource. When the |chef client| is run in |chef shell| mode, those breakpoints can be used to debug recipes. Breakpoints are ignored by the |chef client| during an actual |chef client| run.  In general, breakpoints are used most often in a non-production environment, for the purpose of debugging recipes. After those recipes are debugged and the desired behavior has been tested, the breakpoints are typically removed from the recipes before uploading the cookbooks to a production environment (even if the |chef client| ignores then when building the resource collection during an official |chef client| run).

