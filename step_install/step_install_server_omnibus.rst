.. This is an included how-to. 


To install the |chef server|, you must run the |omnibus installer|.

To run the |omnibus installer| for the |chef server|:

#. Download the |omnibus installer|: http://opscode-osc-demo.s3.amazonaws.com/chef-server_0.10.8-198-g6d59524-1.ubuntu.10.04_amd64.deb

   .. note:: Currently, the Chef Server 11 omnibus installer supports only Ubuntu 10.04. Additional packages will be available as we get closer to the Chef 11 release.

#. Install the package.

#. After installing the package, you must run ``sudo chef-server-ctl reconfigure`` to configure and start the |chef server|.

#. Add a |chef client|:

   .. code-block:: bash

      sudo apt-get update
      sudo apt-get install ruby ruby-dev libopenssl-ruby -y
      # Install Rubygems from source
      cd /tmp
      curl -O http://production.cf.rubygems.org/rubygems/rubygems-1.8.10.tgz
      tar zxf rubygems-1.8.10.tgz
      cd rubygems-1.8.10
      sudo ruby setup.rb --no-format-executable
      # Install chef-client
      sudo gem install chef --no-rdoc --no-ri
      # Configure
      sudo cp /etc/chef-server/chef-validator.pem /etc/chef/validation.pem
      echo 'chef_server_url "https://localhost"' | sudo tee /etc/chef/client.rb
      # Done
      sudo chef-client