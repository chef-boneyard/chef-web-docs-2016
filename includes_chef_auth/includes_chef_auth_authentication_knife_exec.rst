.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


xxxxx

From a Knife Plugin or Knife Exec script

When creating a Knife Plugin or Knife Exec script, the libraries required to make authenticated API requests have already been included. In the most cases, one will not need to make API calls directly when using knife plugins or knife exec scripts, as it is easier to interact with nodes, clients, and other objects via other means. See the Knife Plugins and Knife Exec page for details.

In a Knife Exec script (and Shef), the api object already includes all of the necessary configuration to make API calls using the following methods:

* api.get
* api.post
* api.put
* api.delete

API Request from a Knife Exec Script, Example 1

.. code-block:: ruby

   $ knife exec -E 'puts api.get("/nodes/nodename")'

API Request from a Knife Exec Script, Example 2

.. code-block:: ruby

   $ client_desc = {
     "name"  => "monkeypants",
     "admin" => false
   }

   new_client = api.post("/clients", client_desc)
   puts new_client["private_key"]

Moreover, whenever possible, api will return an object of the relevant type, on which you can call methods.
API Request from a Knife Exec Script, Example 2

.. code-block:: ruby

   # We could also just call api.delete, but that wouldn't show
   # that api returns a node object
   silly_node = api.get("/nodes/foobar")
   silly_node.destroy

In a Knife Plugin, the rest object is similar to the api client. The only difference is the function names:

* rest.get_rest
* rest.put_rest
* rest.post_rest
* rest.delete_rest

API Request from a Knife Plugin

.. code-block:: ruby

   module MyCommands
     class MyNodeDelete < Chef::Knife
       #An implementation of knife node delete
       banner 'knife my node delete [NODE_NAME]'
     
     def run
       if name_args.length < 1
         show_usage
         ui.fatal("You must specify a node name.")
         exit 1
       end
       nodename = name_args[0]
          api_endpoint = "nodes/#{nodename}"
          # Again, we could just call rest.delete_rest
          nodey = rest.get_rest(api_endpoint)
          ui.confirm("Do you really want to delete #{nodey}")
          nodey.destroy
        end
      end
   end

Note that knife will handle any HTTP exceptions that arise within your knife plugin or exec script.