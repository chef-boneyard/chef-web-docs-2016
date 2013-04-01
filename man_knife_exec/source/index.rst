=====================================================
exec
=====================================================

.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt

.. include:: ../../includes_knife/includes_knife_exec.rst

**Common Options**

.. include:: ../../includes_knife/includes_knife_common_options.rst

**Authenticated API Requests**

.. include:: ../../includes_knife/includes_knife_exec_authenticated_api_requests.rst

**Syntax**

.. include:: ../../includes_knife/includes_knife_exec_syntax.rst

**Options**

.. include:: ../../includes_knife/includes_knife_exec_options.rst

**knife.rb File Settings**

.. include:: ../../includes_knife/includes_knife_using_knife_rb.rst

.. include:: ../../includes_knife/includes_knife_exec_settings.rst

**Examples**

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

.. code-block:: ruby

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

.. code-block:: ruby

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

to return something like:

.. code-block:: bash

   Your query: hostname:test_system
   Your attributes: ipaddress fqdn
   {"test_system.example.com"=>{"ipaddress"=>"10.1.1.200", "fqdn"=>"test_system.example.com"}}


