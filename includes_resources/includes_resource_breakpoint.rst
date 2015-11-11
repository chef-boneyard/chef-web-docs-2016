.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the |resource breakpoint| resource to add breakpoints to recipes. Run the |chef shell| in |chef client| mode, and then use those breakpoints to debug recipes. Breakpoints are ignored by the |chef client| during an actual |chef client| run. That said, breakpoints are typically used to debug recipes only when running them in a non-production environment, after which they are removed from those recipes before the parent cookbook is uploaded to the |chef server|.
