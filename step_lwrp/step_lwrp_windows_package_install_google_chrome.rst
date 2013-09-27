.. This is an included how-to. 

To install |google chrome|:

.. code-block:: ruby

   windows_package "Google Chrome" do
     source "https://dl-ssl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B806F36C0-
                CB54-4A84-A3F30CF8A86575E0%7D%26lang%3Den%26browser%3D3%26usagestats%3D0%26appname%3D
                Google%2520Chrome%26needsadmin%3Dfalse/edgedl/chrome/install/GoogleChromeStandaloneEnterprise.msi"
     action :install
   end
