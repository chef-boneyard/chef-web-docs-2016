.. This is an included how-to. 


To check the status of |knife| using a |ruby| script named "status.rb" (which looks like):

.. code-block:: ruby

   printf "%-5s %-12s %-8s %s\n", "Check In", "Name", "Ruby", "Recipes"
   nodes.all do |n|
      checkin = Time.at(n['ohai_time']).strftime("%F %R")
      rubyver = n['languages']['ruby']['version']
      recipes = n.run_list.expand(_default).recipes.join(", ")
      printf "%-20s %-12s %-8s %s\n", checkin, n.name, rubyver, recipes
   end

and is located in a directory named "scripts", enter:

.. code-block:: bash

   $ knife exec scripts/status.rb
