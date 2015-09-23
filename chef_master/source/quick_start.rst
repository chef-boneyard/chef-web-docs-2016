=====================================================
Quick Start
=====================================================

For the quickest way to get started using |chef|:

#. Download the |chef dk|: http://downloads.chef.io/chef-dk/.
#. Set your system |ruby| to this path:

   .. code-block:: bash

      $ /opt/chefdk/embedded/bin/ruby

#. Generate a cookbook: 

   .. code-block:: bash

      $ chef generate app cookbook_name

#. Update the ``default.rb`` recipe in the generated cookbook to contain:

   .. code-block:: ruby

      file "#{ENV['HOME']}/test.txt" do
        content 'This file created by Chef!'
      end

#. Run the |chef client| using the ``default.rb`` recipe:

   .. code-block:: bash

      $ chef-client --local-mode --override-runlist chef-repo

This will create a file named ``test.txt`` at the home path on your machine. Open that file and it will say ``This file created by Chef!``.

* Delete the file, run the |chef client| again, and |chef| will put the file back.
* Change the string in the file, run the |chef client| again, and |chef| will make the string in the file the same as the string in the recipe.
* Change the string in the recipe, run the |chef client| again, and |chef| will update that string to be the same as the one in the recipe.

There's a lot more that |chef| can do, obviously, but that was super easy! Keep reading this topic for more information about setting up your workstation, configuring |kitchen| to run virtual environments from your workstation, and setting up a more detailed cookbook. Or browse the docs and dive in.
