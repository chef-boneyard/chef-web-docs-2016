.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Data can be passed to a definition from more than one recipe. For example, when both ``/etc/aliases`` and |path etc sudoers| require updates from multiple recipes during a single |chef client| run. A definition file that reopens resources would look something like:

.. code-block:: ruby

   # example provided by community member "Mithrandir". Thank you!

   define :email_alias, :recipients => [] do
     execute 'newaliases' do
       action :nothing
     end
    
     t = nil
     begin
       t = resources(:template => '/etc/aliases')
     rescue Chef::Exceptions::ResourceNotFound
       t = template '/etc/aliases' do
         source 'aliases.erb'
         cookbook 'aliases'
         variables({:aliases => {} })
         notifies :run, 'execute[newaliases]'
       end
     end
   
     if not t.variables[:aliases].has_key?(params[:name])
       t.variables[:aliases][params[:name]] = []
     end
     t.variables[:aliases][params[:name]] << [ params[:recipients] ]
   end
