.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |reporting| feature of |chef server oec| is used to keep track of what happened during the execution of |chef client| runs across all of the infrastructure being managed by the |chef server|. Reports can be generated for the entire organization and they can be generated for specific nodes.

Reports data is collected by the |chef server| during the |chef client| run and the results are posted to the |chef server| at the end of the |chef client| run at the same time the node object is uploaded to the |chef server|.
