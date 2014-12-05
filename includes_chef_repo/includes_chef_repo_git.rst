.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Copy/pasted from HERE: https://wiki.opscode.com/display/chef/Working+with+git


**Set up the development repository**

Use the following steps to set up a development repository for |chef|:

#. Setup a |github| account.
#. Fork the https://github.com/opscode/chef repository to your |github| account.
#. Clone the https://github.com/opscode/chef repository:

   .. code-block:: bash
      
      $ git clone git@github.com:yourgithubusername/chef.git

#. From the command line, browse to the ``chef/`` directory:

   .. code-block:: bash
      
      $ cd chef/

#. From the ``chef/`` directory, add a remote named ``opscode``:

   .. code-block:: bash

      $ git remote add opscode git://github.com/opscode/chef.git

#. Verify:

   .. code-block:: bash
      
      $ git config --get-regexp "^remote\.opscode"

   which should return something like:

   .. code-block:: bash

      remote.opscode.url git://github.com/opscode/chef.git
      remote.opscode.fetch +refs/heads/*:refs/remotes/opscode/*

#. Adjust your branch to track the ``opscode master`` remote branch:

   .. code-block:: bash

      $ git config --get-regexp "^branch\.master"

   which should return something like:

   .. code-block:: bash

      branch.master.remote origin
      branch.master.merge refs/heads/master

   and then change it:

   .. code-block:: bash

      $ git config branch.master.remote opscode



**Keep the master branch up to date**

Use the following steps to keep the master branch up to date. 

#. Run:
    
   .. code-block:: bash

      $ git checkout master

#. And then run:

   .. code-block:: bash

      $ git pull --rebase
   
The following ``rakefile`` can be used to update |chef|, |ohai|, and cookbooks. Edit as necessary:

.. code-block:: ruby

   projects = %w[chef cookbooks ohai]
   opscode = "#{ENV['HOME']}/projects/opscode"

   desc "Update local repositories from upstream"
   task :update do
     projects.each do |p|
       Dir.chdir("#{opscode}/#{p}") do
         sh "git fetch opscode"
         sh "git rebase opscode/master master"
       end
     end
   end



**Synchronize the master branch from any branch**

Use the following steps to synchronize the master branch. 

#. Run:
    
   .. code-block:: bash

      $ git fetch opscode

#. And then run:

   .. code-block:: bash

      $ git rebase opscode/master master

   .. note:: Use ``rebase`` instead of ``merge`` to ensure that a linear history is maintained that does not include unnecessary merge commits. ``rebase`` will also rewind, apply, and then reapply commits to the ``master`` branch.


**Work on topic branches**

Commits to the |chef| repositories should never be made agains the master branch. Use a topic branch instead. A topic branch solves a single and unique problem and often maps closely to an issue being tracked in the repository. For example, a topic branch to add support for a new init system or a topic branch to resolve a bug that occurs in a specific version of |centos|. Ideally, a topic branch is named in a way that associates it closely with the issue it is attempting to resolve. This helps ensure that others may easily find it.

Use the following steps to create a topic branch:

#. For a brand new clone of the |chef| repository (that was created using the steps listed earlier), fetch the ``opscode`` remote:

   .. code-block:: bash
      
      $ git fetch opscode

#. Create an appropriately named tracking branch:

   .. code-block:: bash
      
      $ git checkout --track -b CHEF-XX opscode/master

   Set up a topic branch to track ``opscode/master``. This allows commits to be easily rebased prior to merging.

#. Make your changes, and then commit them:

   .. code-block:: bash
      
      $ git status

#. And then run:

   .. code-block:: bash

      $ git commit <filespec>

#. Rebase the commits against ``opscode/master``. After work in the topic branch is finished, rebase these commits against the upstream master. Do this manually with ``git fetch`` followed by a ``git rebase`` or use ``git pull --rebase``.

   |git| will let you know if there are any problems. In the event of problems, fix them as directed, and then mark as fixed with a ``git add``, and then continue the rebase process using ``git rebase --continue``.
   
   For example:
   
   .. code-block:: bash
      
      $ git fetch opscode

   followed by:
   
   .. code-block:: bash
      
      $ git rebase opscode/master CHEF-XX

   Or:

   .. code-block:: bash
      
      $ git pull --rebase

#. Push the local topic branch to |github|:

   .. code-block:: bash
      
      $ git push origin CHEF-XX

#. Send a |github| pull request for the changes, and then update the |chef| ticket with the appropriate information.



**Delete a topic branch**

After work has been merged by the branch maintainer, the topic branch is no longer necessary and should be removed.

#. Synchronize the local master:

   .. code-block:: bash
      
      $ git checkout master

   followed by:
   
   .. code-block:: bash
      
      $ git pull --rebase

#. Remove the local branch using ``-d`` to ensure that it has been merged by upstream. This option will not delete a branch that is not an ancestor of the current ``HEAD``. From the |git| man page:

   .. code-block:: bash
      
      -d
        Delete a branch. The branch must be fully merged in HEAD.
      -D
        Delete a branch irrespective of its merged status.

#. Remove the local branch:

   .. code-block:: bash
      
      $ git branch -d CHEF-XX

   Or remove the remote branch by using the full syntax to ``push`` and by omitting a source branch:

   .. code-block:: bash
      
      $ git push origin :CHEF-XX
