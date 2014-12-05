.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following steps to synchronize the master branch. 

#. Run:
    
   .. code-block:: bash

      $ git fetch opscode

#. And then run:

   .. code-block:: bash

      $ git rebase opscode/master master

   .. note:: Use ``rebase`` instead of ``merge`` to ensure that a linear history is maintained that does not include unnecessary merge commits. ``rebase`` will also rewind, apply, and then reapply commits to the ``master`` branch.
