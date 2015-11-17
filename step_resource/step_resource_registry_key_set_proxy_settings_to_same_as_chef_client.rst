.. This is an included how-to. 

.. To set system proxy settings to be the same as used by the |chef client|:

Use a double-quoted string:

.. code-block:: ruby

   proxy = URI.parse(Chef::Config[:http_proxy])
   registry_key "HKCU\Software\Microsoft\path\to\key\Internet Settings" do
     values [{:name => 'ProxyEnable', :type => :reg_dword, :data => 1},
             {:name => 'ProxyServer', :data => "#{proxy.host}:#{proxy.port}"},
             {:name => 'ProxyOverride', :type => :reg_string, :data => <local>},
            ]
     action :create
   end

or a single-quoted string:

.. code-block:: ruby

   proxy = URI.parse(Chef::Config[:http_proxy])
   registry_key 'HKCU\Software\Microsoft\path\to\key\Internet Settings' do
     values [{:name => 'ProxyEnable', :type => :reg_dword, :data => 1},
             {:name => 'ProxyServer', :data => "#{proxy.host}:#{proxy.port}"},
             {:name => 'ProxyOverride', :type => :reg_string, :data => <local>},
            ]
     action :create
   end
