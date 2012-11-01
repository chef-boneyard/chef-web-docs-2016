.. This is an included how-to. 

To use the ``pre_fork`` server hook to sleep for one second before forking:

.. code-block:: ruby

   gunicorn_config "/etc/gunicorn/myapp.py" do
     server_hooks({:pre_fork => 'import time;time.sleep(1)'})
     action :create
   end



