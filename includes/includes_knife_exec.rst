.. This is an included file that describes a sub-command or argument in Knife.


The ``exec`` sub-command uses the |knife| configuration file to execute |ruby| scripts in the context of a fully configured |chef client|. This sub-command is most often used to run scripts that will only access |chef server| one time (or otherwise very infrequently). Use this command any time that an operation does not warrant full usage of the |knife| sub-command library.

For |ruby| scripts that will be run using the ``exec`` sub-command, note the following:

  * The |ruby| script must be located on the system from which |knife| is run (and not be located on any of the systems that |knife| will be managing).
  * Shell commands will be run from a management workstation. For example, something like ``%x[ls -lash /opt/only-on-a-node]`` would give you the directory listing for the "opt/only-on-a-node" directory or a "No such file or directory" error if the file does not already exist locally.
  * When the |shef| DSL is available, the |chef client| DSL will not be (unless the management workstation is also a |chef client|). Without the |chef client| DSL, a bash block cannot be used to run bash commands.

This sub-command has the following syntax::

   knife exec SCRIPT (options)

This sub-command has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-E CODE``, ``--exec CODE``
     - |exec|
   * - ``-p PATH:PATH``, ``--script-path PATH:PATH``
     - |script-path|
     
There are three ways to use ``knife exec`` to run |ruby| script files. For example:

.. code-block:: bash

   $ knife exec /path/to/script_file

Or:

.. code-block:: bash

   $ knife exec -E 'RUBY CODE'

Or:

.. code-block:: bash

   $ knife exec
   RUBY CODE
   ^D

For example, to list all of the available search indexes, enter:

.. code-block:: bash

   $ knife exec -E 'puts api.get("search").keys'

Or to show the available free memory for all nodes, enter:

.. code-block:: bash

   $ knife exec -E 'nodes.all {|n| puts "#{n.name} has #{n.memory.total} free memory"}'

Or to check the status of |knife| using a |ruby| script named "status.rb" (which looks like):

.. code-block:: bash

   printf "%-5s %-12s %-8s %s\n", "Check In", "Name", "Ruby", "Recipes"
   nodes.all do |n|
      checkin = Time.at(n['ohai_time']).strftime("%F %R")
      rubyver = n['languages']['ruby']['version']
      recipes = n.run_list.expand.recipes.join(", ")
      printf "%-20s %-12s %-8s %s\n", checkin, n.name, rubyver, recipes
   end

and is located in a directory named "scripts", enter:

.. code-block:: bash

   $ knife exec scripts/status.rb

To query a node for multiple attributes using a |ruby| script named search_attributes.rb (which looks like):

.. code-block:: bash

   % cat scripts/search_attributes.rb
   query = ARGV[2]
   attributes = ARGV[3].split(",")
   puts "Your query: #{query}"
   puts "Your attributes: #{attributes.join(" ")}"
   results = {}
   search(:node, query) do |n|
      results[n.name] = {}
      attributes.each {|a| results[n.name][a] = n[a]}
   end
    
   puts results
   exit 0

enter:

.. code-block:: bash

   % knife exec scripts/search_attributes.rb "hostname:test_system" ipaddress,fqdn
   Your query: hostname:test_system
   Your attributes: ipaddress fqdn
   {"test_system.example.com"=>{"ipaddress"=>"10.1.1.200", "fqdn"=>"test_system.example.com"}}

   


