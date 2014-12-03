.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Copy/pasted from HERE: https://wiki.opscode.com/display/chef/Working+with+git


Initial setup of development repository

#. Setup a github account.
#. Fork the repositories.
#. Clone the repositories locally:

   .. code-block:: bash
      
      $ git clone git@github.com:yourgithubusername/chef.git

#. Enter the chef directory and add a remote named opscode:

   .. code-block:: bash
      
      $ cd chef/
      $ git remote add opscode git://github.com/opscode/chef.git

#. You'll be able to see if this is successful with git config:

   .. code-block:: bash
      
      $ git config --get-regexp "^remote\.opscode"
      remote.opscode.url git://github.com/opscode/chef.git
      remote.opscode.fetch +refs/heads/*:refs/remotes/opscode/*

#. Adjust your branch to track the opscode master remote branch, by default it'll track your origin remote's master:

   .. code-block:: bash
      
      $ git config --get-regexp "^branch\.master"
      branch.master.remote origin
      branch.master.merge refs/heads/master

#. Change it with the following:

   .. code-block:: bash
      
      $ git config branch.master.remote opscode


Keeping your 'master' up-to-date!

Once all this is done, you'll be able to keep your local master up to date with the simple command:

.. code-block:: bash
      
   $ git checkout master
   $ git pull --rebase

Alternatively, you can synchronise your master from any branch with the full fetch/rebase syntax:

.. code-block:: bash
      
   $ git fetch opscode
   $ git rebase opscode/master master

Using rebase pull will do a rebase instead of a merge, which will keep a linear history with no unecessary merge commits. It'll also rewind, apply and then reapply your commits at the HEAD.

Use this Rakefile to update chef, ohai and cookbooks repos (edit as needed).



Working on topic branches

So you want to do some work? Don't put your commits directly in your master branch! It is important to use a 'topic branch' when working on a large project like Chef. The key to this concept is that each topic branch solves a single and unique problem and should usually be logically organized in the same was as a ticket on the issue tracker. A good example is a branch that adds support for a new init system, or resolves a bug when running under a specific version of CentOS. We prefer that topic branches be named after the bug that they solve so that someone with the same issue can easily find your commits in the 'git log'.

If your topic branch solves multiple bugs, reconsider if your branch is perhaps too broad. What if the person merging the contribution finds an issue with part of the branch but not another? Sometimes when you refactor a large piece of the code-base, you resolve multiple bugs and it is better to put individual issue numbers in the commit messages. One solution doesn't fit all, so use your best judgement.

#. If (and only if) you are working on a brand new clone of the chef repo and have only just configured it as above, you will need to fetch from your newly established upstream remote named 'opscode':

   .. code-block:: bash
      
      $ git fetch opscode

#. Create an appropriately named tracking branch:

   .. code-block:: bash
      
      $ git checkout --track -b CHEF-XX opscode/master

Setting a topic branch up to track opscode/master allows you to easily rebase your commits in preperation for merge.

#. Do work:

   .. code-block:: bash
      
      hack
      hack

#. Commit (see step two if more work remains):

   .. code-block:: bash
      
      $ git status
      $ git commit <filespec>

#. Rebase your commits against opscode/master. After your work is finished in the local topic branch, you should rebase you commits against the upstream master. This will temporarily remove your local commits, update the branch from upstream, and then reapply your local commits. You can either do this manually with 'fetch' then 'rebase', or use the 'pull --rebase' shortcut.

   If there are any problems doing so, git will let you know and stop. This is important because it ensures that those that will merge your contribution into the upstream master won't have to resolve differences between your changes and the current branch to include your contribution. If you encounter merge conflicts, you should fix the files as directed and then mark as fixed with 'git add', and then continue rebasing with 'git rebase --continue'. At any stage, you can abort the rebase with 'git rebase --abort'. 

   Option 1: Rebase your commits with fetch + rebase:

   .. code-block:: bash
      
      $ git fetch opscode
      $ git rebase opscode/master CHEF-XX

   Option 2: Rebase your commits with the tracking-branch shortcuts:

   .. code-block:: bash
      
      $ git pull --rebase

#. Push your local topic branch to Github:

   .. code-block:: bash
      
      $ git push origin CHEF-XX

#. Don't forget to send a Github pull request for your changes and update the Opscode ticket with the number and link of the pull request.


Job's done!

Once your work has been merged by the branch maintainer, it is no longer be necessary to keep the local branch or remote branch, so you can remove them if you'd like to clean up.

#. Sync your local master up:

   .. code-block:: bash
      
      $ git checkout master
      $ git pull --rebase

   Remove your local branch using -d to ensure that it has been merged by upstream. Branch -d will not delete a branch that is not an ancestor of your current head. From the git man page:

   .. code-block:: bash
      
      -d
        Delete a branch. The branch must be fully merged in HEAD.
      -D
        Delete a branch irrespective of its merged status.

#. Remove your local branch:

   .. code-block:: bash
      
      $ git branch -d CHEF-XX

   Remove your remote branch by using the full syntax to 'push', and omitting a source branch:

   .. code-block:: bash
      
      $ git push origin :CHEF-XX
