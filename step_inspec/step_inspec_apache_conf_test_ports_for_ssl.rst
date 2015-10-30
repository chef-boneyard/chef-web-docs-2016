.. This is an included how-to. 

.. To test ports for SSL:

.. code-block:: ruby
   
   describe apache_conf do
     its('Listen') { should eq '443'}
   end
