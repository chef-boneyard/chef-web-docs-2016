.. This is an included how-to. 

To create a file in |windows|, be sure to add an escape character---``\``---before the backslashes in the paths:

.. code-block:: ruby

   file 'C:\\tmp\\something.txt' do
     rights :read, 'Everyone'
     rights :full_control, 'DOMAIN\\User'
     action :create
   end
