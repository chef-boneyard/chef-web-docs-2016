.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


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
