.. This is an included how-to. 

To add ``/etc/apt/sources.list.d/hardy-rsyslog-ppa.list``:

.. code-block:: ruby

   apt_repository "hardy-rsyslog-ppa" do
     uri "http://ppa.launchpad.net/a.bono/rsyslog/ubuntu"
     distribution "hardy"
     components ["main"]
     keyserver "keyserver.ubuntu.com"
     key "C0061A4A"
     action :add
     notifies :run, "execute[apt-get update]", :immediately
   end
