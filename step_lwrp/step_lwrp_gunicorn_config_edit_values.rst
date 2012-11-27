.. This is an included how-to. 

To edit some worker-related values:

.. code-block:: ruby

   gunicorn_config "/etc/gunicorn/myapp.py" do
     worker_processes 8
     backlog 4096
     action :create
   end



