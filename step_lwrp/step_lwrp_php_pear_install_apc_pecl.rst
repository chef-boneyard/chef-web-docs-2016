.. This is an included how-to. 

To install the |php extensions| for |apc| (with directives) that are available in the |php pecl| repository:

.. code-block:: ruby

   php_pear "apc" do
     action :install
     directives(:shm_size => 128, :enable_cli => 1)
   end
