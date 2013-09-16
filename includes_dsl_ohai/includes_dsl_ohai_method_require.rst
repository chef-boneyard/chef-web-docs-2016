.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``require`` method is used point |ohai| to the location of an external class library.

For example:

.. code-block:: ruby

   require path/to/external/library

|ohai| will attempt to fully qualify the name of any class by prepending ``Chef::`` to the loaded class. For example both:

.. code-block:: ruby

   require Chef::Mixin::ShellOut

and:

.. code-block:: ruby

   require Mixin::ShellOut

are both understood by the |ohai| in the same way: ``Chef::Mixin::ShellOut``.

When a class is an external class (and therefore should not have ``Chef::`` prepended), use ``::`` to let the |ohai| know. For example:

.. code-block:: ruby

   ::External::Class::Library

For example, the |ruby| WMI is required with |windows|:

.. code-block:: ruby

   collect_data(:windows) do
     require 'ruby-wmi'
     WIN32OLE.codepage = WIN32OLE::CP_UTF8
   
     kernel Mash.new
   
     host = WMI::Win32_OperatingSystem.find(:first)
     kernel[:os_info] = Mash.new
     host.properties_.each do |p|
       kernel[:os_info][p.name.wmi_underscore.to_sym] = host.send(p.name)
     end
   
     ...
   
   end







