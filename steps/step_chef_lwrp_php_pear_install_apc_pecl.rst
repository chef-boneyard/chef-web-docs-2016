.. This is an included how-to. 

To install apc pecl with directives

.. code-block:: ruby

   php_pear "apc" do
     action :install
     directives(:shm_size => 128, :enable_cli => 1)
   end
