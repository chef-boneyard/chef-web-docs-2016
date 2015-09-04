.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The definition from the prior example simply is a macro around grouping and building resources together.  Every time it is invoked we get a different
directory and file provider which handle the unique hostname and port which is passed into the paramters.

.. code-block:: ruby

   define :host_porter, :port => 4000, :hostname => nil do
     params[:hostname] ||= params[:name]
   
     directory '/etc/#{params[:hostname]}' do
       recursive true
     end
   
     file '/etc/#{params[:hostname]}/#{params[:port]}' do
       content 'some content'
     end
   end

