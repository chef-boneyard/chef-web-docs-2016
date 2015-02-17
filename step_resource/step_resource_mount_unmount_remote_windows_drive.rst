.. This is an included how-to. 

.. To un-mount a remote |windows| D: drive attached as local drive letter T:

.. code-block:: ruby

   mount 'T:' do
     action :umount
     device '\\\\hostname.example.com\\D$'
   end
