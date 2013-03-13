.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |knife| plugin can be used to make authenticated API requests to the |chef server| using the following methods:

* ``rest.delete_rest`` --- Use to delete an object from the |chef server|.
* ``rest.get_rest`` --- Use to get the details of an object on the |chef server|.
* ``rest.post_rest`` --- Use to add an object to the |chef server|.
* ``rest.put_rest`` --- Use to update an object on the |chef server|.

For example:

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




























These methods are used with the ``-E`` option, which passes a string of code to the |chef server|. These methods have the following syntax:

.. code-block:: bash

   $ knife exec -E 'api.method(/endpoint)'

where:

* ``api.method`` is the corresponding authentication method --- ``api.delete``, ``api.get``, ``api.post``, or ``api.put``
* ``/endpoint`` is an endpoint in the |api chef server|

For example, to get the data for a node named "Example_Node":

.. code-block:: bash

   $ knife exec -E 'puts api.get("/nodes/Example_Node")'

and to ensure that the output is visible in the console, add the ``puts`` in front of the API authorization request:

.. code-block:: bash

   $ knife exec -E 'puts api.get("/nodes/Example_Node")'

where ``puts`` is the shorter version of the ``$stdout.puts`` predefined variable in |ruby|.


The following example shows how to add a client named "monkeypants" and the ``/clients`` endpoint, and then return the private key for that user in the console:

.. code-block:: bash

   $ client_desc = {
       "name"  => "monkeypants",
       "admin" => false
     }
     
     new_client = api.post("/clients", client_desc)
     puts new_client["private_key"]


