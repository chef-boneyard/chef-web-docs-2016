.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| uses a lock file to ensure that only one |chef client| run is in progress at any time. A lock file is created at the start of the |chef client| run and is deleted at the end of the |chef client| run. A new |chef client| run looks for the presence of a lock file and, if present, will wait for that lock file to be deleted. The location of the lock file can vary by platform.

* Use the ``lockfile`` setting in the |client rb| file to specify non-default locations for the lock file. (The default location is typically platform-dependent and is recommended.)
* Use the ``run_lock_timeout`` setting in the |client rb| file to specify the amount of time (in seconds) to wait for the lock file associated with an in-progress |chef client| run to be deleted.