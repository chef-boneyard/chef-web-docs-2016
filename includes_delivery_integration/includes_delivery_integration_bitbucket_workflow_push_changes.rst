.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the following steps to create a change in |chef delivery|:

#. Create and check out a topic branch for the change, based on the current state of your project's pipeline (usually from ``master``). For example, ``git checkout -b great-feature``.
#. Make and commit changes to the project as normal.
#. Submit the change to |chef delivery| with the command ``delivery review``. This command will output a URL to view the details and progress of the change through the |chef delivery| webui.
#. The Verify phase will begin automatically and a corresponding pull request will be opened in |bitbucket|.
