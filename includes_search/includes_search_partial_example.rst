.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following examples show how partial search can be used in a cookbook. First, a cookbook without partial search:

.. code-block:: ruby

   nodes = search(:node, "keys_ssh:* NOT name:#{node.name}")
   nodes << node

   begin
     other_hosts = data_bag('ssh_known_hosts')
     other_hosts.each do |h|
       host = data_bag_item('ssh_known_hosts', h).to_hash
       host['ipaddress'] ||= r.getaddress(host['fqdn'])
       host['keys'] = {
         'ssh' => {}
       }
       host['keys']['ssh']['host_rsa_public'] = host['rsa'] if host.has_key?('rsa')
       host['keys']['ssh']['host_dsa_public'] = host['dsa'] if host.has_key?('dsa')
       nodes << host
     end
   end

and then a cookbook that uses the ``partial_search`` method to provide better and more targeted search results:

.. code-block:: ruby

   nodes = partial_search(:node, "keys_ssh:* NOT name:#{node.name}",
     :keys => {
       'hostname' => [ 'hostname' ], 
       'fqdn'     => [ 'fqdn' ],
       'ipaddress' => [ 'ipaddress' ],
       'host_rsa_public' => [ 'keys', 'ssh', 'host_rsa_public' ],
       'host_dsa_public' => [ 'keys', 'ssh', 'host_dsa_public' ]
       }
     )

   nodes << { 
     'hostname'  => node['hostname'],
     'fqdn'      => node['fqdn'],
     'ipaddress' => node['ipaddress'],
     'host_rsa_public' => node['ssh'] && 
                          node['ssh']['keys'] && 
                          node['ssh']['keys']['host_rsa_public'] ? 
                          node['ssh']['keys']['host_rsa_public'] : nil,
     'host_dsa_public' => node['ssh'] && 
                          node['ssh']['keys'] && 
                          node['ssh']['keys']['host_dsa_public'] ? 
                          node['ssh']['keys']['host_dsa_public'] : nil,
     }

   begin
     other_hosts = data_bag('ssh_known_hosts')
     other_hosts.each do |h|
       host = data_bag_item('ssh_known_hosts', h).to_hash
       host['ipaddress'] ||= r.getaddress(host['fqdn'])
       host['host_rsa_public'] = host.has_key?('rsa') ? host['rsa'] : nil
       host['host_dsa_public'] = host.has_key?('dsa') ? host['dsa'] : nil
       nodes << host
     end
   end



 









   

