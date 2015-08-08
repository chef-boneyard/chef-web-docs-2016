.. This is an included how-to. 

.. To create a key pair:

.. code-block:: ruby

   aws_key_pair 'ref-key-pair' do
     private_key_options({
       :format => :pem,
       :type => :rsa,
       :regenerate_if_different => true
     })
     allow_overwrite true
   end
