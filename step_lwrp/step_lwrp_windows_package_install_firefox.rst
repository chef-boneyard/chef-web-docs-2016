.. This is an included how-to. 

To install |firefox| as custom installer and manually set the silent install flags:

.. code-block:: ruby

   windows_package "Mozilla Firefox 5.0 (x86 en-US)" do
     source "http://3347-mozilla.voxcdn.com/pub/mozilla.org/firefox/releases/5.0/win32/en-US/Firefox%20Setup%205.0.exe"
     options "-ms"
     installer_type :custom
     action :install
   end
