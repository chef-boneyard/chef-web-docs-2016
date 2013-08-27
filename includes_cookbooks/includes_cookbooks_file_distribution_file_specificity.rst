.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A cookbook will frequently be designed to work across many platforms and will often be required to distribute a specific file to a specific platform. A cookbook can be designed to support distributing files across platforms, but ensuring that the right file ends up on each system.

The pattern for file specificity is as follows:

#. host-node[:fqdn]
#. node[:platform]-node[:platform_version]
#. node[:platform]-version_components: The version string is split on decimals and searched from greatest specificity to least; for example, if the location from the last rule was centos-5.7.1, then centos-5.7 and centos-5 would also be searched.
#. node[:platform]
#. default

For example, a cookbook may have a ``/files`` directory structure like this::

   files/
      host-foo.example.com
      ubuntu-10.04
      ubuntu-10
      ubuntu
      redhat-5.8
      redhat-6.4
      ...
      default

and a resource that looks something like the following:

.. code-block:: ruby

   resource_type "/usr/local/bin/apache2_module_conf_generate.pl" do
     source "apache2_module_conf_generate.pl"
     mode 0755
     owner "root"
     group "root"
   end

where ``resource_type`` is the |resource cookbook_file| or |resource remote_file| resource. This resource would be matched in the same order as the ``/files`` directory structure. For a node named "foo.example.com" that is running |ubuntu| 10.04, the second item would be the matching item and the location to which the file identified in the |resource cookbook_file| resource would be distributed:

.. code-block:: ruby

   host-foo.example.com/apache2_module_conf_generate.pl
   ubuntu-10.04/apache2_module_conf_generate.pl
   ubuntu-10/apache2_module_conf_generate.pl
   ubuntu/apache2_module_conf_generate.pl
   default/apache2_module_conf_generate.pl

If the ``apache_module_conf_generate.pl`` file was located in the cookbook directory under ``files/host-foo.example.com/``, the specified file(s) would only be copied to the machine with the domain name foo.example.com.

A different example, a cookbook may have a ``/templates`` directory structure like this::

   templates/
     node-desktop
     windows-6.2
     windows-6.1
     windows-6.0
     windows
     default

and a resource that looks something like the following:

.. code-block:: ruby

   template "C:\path\to\file\text_file.txt" do
     source "text_file.txt"
     mode 0755
     owner "root"
     group "root"
   end

This resource would be matched in the same order as the ``/templates`` directory structure. For a node named "node-desktop" that is running |windows 7|, the second item would be the matching item and the location:

.. code-block:: ruby

   /templates
     windows-6.2/text_file.txt
     windows-6.1/text_file.txt
     windows-6.0/text_file.txt
     windows/text_file.txt
     default/text_file.txt


