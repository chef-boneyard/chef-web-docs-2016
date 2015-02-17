.. This is an included how-to. 

.. To execute a command with a touch file running only once:

.. code-block:: ruby

   execute 'upgrade script' do
     command 'php upgrade-application.php && touch /var/application/.upgraded'
     creates '/var/application/.upgraded'
     action :run
   end
