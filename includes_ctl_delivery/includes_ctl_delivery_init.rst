.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for the delivery CLI
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``init`` subcommand to initialize a |chef delivery| project. This will set up a local repository in the |chef delivery| server, set up a pipeline, and commit a build cookbook specific to the project. Subsequent changes to this repo should be done using the ``review`` subcommand.