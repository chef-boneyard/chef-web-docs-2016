.. This is an included how-to. 

To install Google Chrome. Uses the dmg_name because the application name has spaces. Installs in /Applications/Google Chrome.app.

.. code-block:: ruby

   dmg_package "Google Chrome" do
      dmg_name "googlechrome"
      source "https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg"
      checksum "7daa2dc5c46d9bfb14f1d7ff4b33884325e5e63e694810adc58f14795165c91a"
      action :install
    end

The following examples all use the SHA256 checksum that was current when the application was originally installed, and may not be current for the latest releases.


