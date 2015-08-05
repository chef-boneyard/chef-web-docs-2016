.. This is an included how-to. 

The following example shows how the ``only_if`` method can be used to tell the |chef client| to do something, but only when certain conditions are met. In this case, only if a file already exists:

.. code-block:: ruby

   script 'install_something' do
     flags '-ex'
     code <<-EOH
       /opt/ruby-enterprise/bin/bundle install --cmd=node['node_name']['directory']/cmd
     EOH
     only_if do File.exist?("node['node_name']['directory']}/cmd"  end
   end
