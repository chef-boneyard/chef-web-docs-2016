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
