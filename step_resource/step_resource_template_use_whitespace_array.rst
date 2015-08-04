.. This is an included how-to. 


The following example shows how to use a |ruby| whitespace array to define a list of configuration tools, and then use that list of tools within the |resource template| resource to ensure that all of these configuration tools are using the same RSA key:

.. code-block:: ruby

   %w{openssl.cnf pkitool vars Rakefile}.each do |f|
     template '/etc/openvpn/easy-rsa/#{f}' do
       source '#{f}.erb'
       owner 'root'
       group 'root'
       mode '0755'
     end
   end
