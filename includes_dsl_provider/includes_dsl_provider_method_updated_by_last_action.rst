.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``updated_by_last_action`` method is used to notify a lightweight resource that a node was updated successfully. For example, the ``cron_d`` lightweight resource in the |cookbook cron| cookbook: 

.. code-block:: ruby

   action :create do
     t = template '/etc/cron.d/#{new_resource.name}' do
       cookbook new_resource.cookbook
       source 'cron.d.erb'
       mode '0644'
       variables({
           :name => 'new_resource.name',
           :minute => 'new_resource.minute',
           :hour => 'new_resource.hour',
           :day => 'new_resource.day',
           :month => 'new_resource.month',
           :weekday => 'new_resource.weekday',
           :command => 'new_resource.command',
           :user => 'new_resource.user',
           :mailto => 'new_resource.mailto',
           :path => 'new_resource.path',
           :home => 'new_resource.home',
           :shell => 'new_resource.shell'
         })
       action :create
     end
     new_resource.updated_by_last_action(t.updated_by_last_action?)
   end

where ``t.updated_by_last_action?`` uses a variable to check whether a new |crontab| entry was created.
