.. This is an included how-to. 

To return details about a specific |chef client| run, run the following command:

.. code-block:: bash

   $ knife runs show c40cb4f2-5007-433c-9770-8e0c7e550496

to return something similar to:

.. code-block:: bash

   $ run_detail:
       data:
         exception:
           backtrace: ["/opt/chef/embedded/lib/ruby/1.9.1/net/http.rb:763:in `initialize'",
                       "/opt/chef/embedded/lib/ruby/1.9.1/net/http.rb:763:in `open'",
                       "/opt/chef/embedded/lib/ruby/1.9.1/net/http.rb:763:in `block in connect'",
                       "/opt/chef/embedded/lib/ruby/1.9.1/timeout.rb:55:in `timeout'",
                       "/opt/chef/embedded/lib/ruby/1.9.1/timeout.rb:100:in `timeout'",
                       "/opt/chef/embedded/lib/ruby/1.9.1/net/http.rb:763:in `connect'",
                       "/opt/chef/embedded/lib/ruby/1.9.1/net/http.rb:756:in `do_start'",
                       ...
                       "/usr/bin/chef-client:23:in `load'",
                       "/usr/bin/chef-client:23:in `<main>'"]
           class:       #<SocketError: Error connecting to URL - getaddrinfo: Temporary failure in name resolution>
           description:
             sections:
               Networking Error:: Error connecting to URL - getaddrinfo: Temporary failure in name resolution
                                  Your chef_server_url may be misconfigured, or the network could be down.
               Relevant Config Settings:: chef_server_url  "URL"
             title:    Error Syncing Cookbooks:
             message:     Error connecting to URL - getaddrinfo: Temporary failure in name resolution
             end_time:          2013-12-10T14:38:18Z
             node_name:         node_name
             run_id:            c40cb4f2-5007-433c-9770-8e0c7e550496
             run_list:          ["recipe[createfile]"]
             start_time:        2013-12-10T14:37:37Z
             status:            failure
             total_res_count:   0
             updated_res_count: 0
             ...