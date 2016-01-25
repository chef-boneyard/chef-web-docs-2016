.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In Darwin, the canonical way to launch a daemon is through launchd as opposed to more traditional
mechanisms or mechanisms provided in earlier versions of Mac OS X. These alternate methods should be
considered deprecated and not suitable for new projects.

In the launchd lexicon, a "daemon" is, by definition, a system-wide service of which there is one
instance for all clients. An "agent" is a service that runs on a per-user basis. Daemons should not
attempt to display UI or interact directly with a user's login session. Any and all work that involves
interacting with a user should be done through agents.

If you wish your service to run as a certain user, in that user's environment, making it a launchd
agent is the ONLY supported means of accomplishing this on Mac OS X.

For more information: https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man8/launchd.8.html
