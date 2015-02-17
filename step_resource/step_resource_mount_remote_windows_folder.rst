.. This is an included how-to. 

.. To mount a remote |windows| folder on local drive letter T:

.. code-block:: ruby

   mount 'T:' do
     action :mount
     device '\\\\hostname.example.com\\folder'
   end
