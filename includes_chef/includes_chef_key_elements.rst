.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| is comprised of the following:

* A |chef server|, which acts as a hub that is available to every node in the organization
* A |chef client| is installed on every node. The |chef client| performs all of the configuration tasks that are specified by a run-list, including pulling any required configuration data from the |chef server| during every |chef client| run
* One (or more) workstations, on which cookbooks are authored, tested, and maintained prior to uploading them to the |chef server|
* |chef manage|, which provides a web user interface for the |chef server|
* |chef analytics|, which provides real-time visibility into what is happening on the |chef server|, including what's changing, who made those changes, and when they occurred.
* |chef dk|, which is a set of tooling that is packaged by |chef|. The |chef dk| includes the |chef ctl| command line tool, |kitchen|, |chef spec|, |berkshelf|, and more.
