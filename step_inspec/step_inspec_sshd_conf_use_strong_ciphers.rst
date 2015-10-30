.. This is an included how-to. 

.. To use approved strong ciphers:

.. code-block:: ruby

   describe sshd_config do
     its('Ciphers') { should eq('chacha20-poly1305@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr') }
   end
