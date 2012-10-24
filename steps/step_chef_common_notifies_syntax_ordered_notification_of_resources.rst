.. This is an included how-to. 

To notify multiple resources and create a sequence of ordered notifications:

.. code-block:: ruby

   execute 'foo' do
     command '...'
     notifies :run, 'template[baz]', :immediately
     notifies :install, 'package[bar]', :immediately
     notifies :run, 'execute[final]', :immediately
   end
   
   template 'baz' do
     ...
     notifies :run, 'execute[restart_baz]', :immediately
   end
   
   package 'bar'
   
   execute 'restart_baz'
   
   execute 'final' do
     command '...'
   end

where the sequencing will be in the following order: ``execute 'foo'``, ``template 'baz'``, ``execute [restart_baz]``, ``package 'bar'``, and ``execute 'final'``.

