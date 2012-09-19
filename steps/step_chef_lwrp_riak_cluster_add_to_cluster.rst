.. This is an included how-to. 

To add a node to a |riak| cluster:

.. code-block:: ruby

   riak_cluster node[:riak][:core][:cluster_name] do
     node_name node[:riak][:erlang][:node_name]
     action :join
     riak_admin_path bin_path
   end
