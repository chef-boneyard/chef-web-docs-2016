.. This is an included how-to. 

|ohai| (version 0.6.x or higher) can be run on the following versions of |windows|:

* Windows 7 Ultimate RC1
* Windows 7 Enterprise
* Windows XP Professional
* Windows Vista Ultimate
* Windows 2000 Server SP4
* Windows 2003 Server R2 Standard
* Windows 2008 Server R2 Standard

To install |ohai| on |windows|, do the following:

#. Install |ruby| using the one-click installer: http://rubyforge.org/frs/download.php/69034/rubyinstaller-1.8.7-p249-rc2.exe.

#. Install |ohai| and WMI bindings:

   .. code-block:: bash

      $ C:\Ruby>gem install ohai ruby-wmi

#. Run |ohai|:

   .. code-block:: bash

      $ C:\Ruby>ohai

