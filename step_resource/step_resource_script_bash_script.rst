.. This is an included how-to. 

.. To run a |bash| script:

.. code-block:: ruby

   script "install_something" do
     interpreter "bash"
     user "root"
     cwd "/tmp"
     code <<-EOH
     wget http://www.example.com/tarball.tar.gz
     tar -zxf tarball.tar.gz
     cd tarball
     ./configure
     make
     make install
     EOH
   end

or something like:

.. code-block:: ruby

   bash "openvpn-server-key" do
     environment("KEY_CN" => "server")
     code <<-EOF
       openssl req -batch -days #{node["openvpn"]["key"]["expire"]} \
         -nodes -new -newkey rsa:#{key_size} -keyout #{key_dir}/server.key \
         -out #{key_dir}/server.csr -extensions server \
         -config #{key_dir}/openssl.cnf
     EOF
     not_if { ::File.exists?("#{key_dir}/server.crt") }
   end

where ``code`` contains the |open ssl| command to be run. The ``not_if`` method tells |chef| not to run the command if the file already exists.