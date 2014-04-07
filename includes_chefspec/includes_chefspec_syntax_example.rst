.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example starts with a recipe in the |cookbook chef_splunk| cookbook:

.. code-block:: ruby

   if node['splunk']['accept_license']
     execute "#{splunk_cmd} enable boot-start --accept-license --answer-yes" do
       not_if { ::File.exists?('/etc/init.d/splunk') }
     end
   end
   
   service 'splunk' do
     supports :status => true, :restart => true
     provider Chef::Provider::Service::Init
     action :start
   end

This recipe is used to start the ``splunk`` service, but only if the node itself is a licensed |splunk| node. This recipe has a corresponding |chef spec| unit test, which does several things: first testing to see that the recipe does test for the |splunk| license, and then restarting the ``splunk`` service, but only if the license is present:

.. code-block:: ruby

   require_relative '../spec_helper'
   
   describe 'chef-splunk::service' do
     let(:chef_run) do
       ChefSpec::Runner.new do |node|
         node.set['splunk']['accept_license'] = true
       end.converge(described_recipe)
     end
   
     it 'enables the service at boot and accepts the license' do
       expect(chef_run).to run_execute('/opt/splunkforwarder/bin/splunk enable boot-start --accept-license --answer-yes')
     end
   
     it 'starts the splunk service' do
       expect(chef_run).to start_service('splunk')
     end
   end

When ``enables the service at boot and accepts the license`` is true, then ``starts the splunk service`` is unit tested. When both are true, the recipe is behaving in the intended manner.
