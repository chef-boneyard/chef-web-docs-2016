.. This is an included how-to. 

To make the local |windows| proxy match the proxy set by the |chef client|:

.. code-block:: ruby

   proxy = URI.parse(Chef::Config[:http_proxy])
   windows_registry 'HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings' do
     values 'ProxyEnable' => 1, 'ProxyServer' => "#{proxy.host}:#{proxy.port}", 'ProxyOverride' => '<local>'
   end
