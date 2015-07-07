.. This is an included how-to. 

.. To execute a command only upon notification:

.. code-block:: ruby

   execute 'slapadd' do
     command 'slapadd < /tmp/something.ldif'
     creates '/var/lib/slapd/uid.bdb'
     action :nothing
   end
   
   template '/tmp/something.ldif' do
     source 'something.ldif'
     notifies :run, 'execute[slapadd]', :immediately
   end
