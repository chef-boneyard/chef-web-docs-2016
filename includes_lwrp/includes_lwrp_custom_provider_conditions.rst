.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A lightweight provider can use any conditional statement that can be used in |ruby|: ``if``, ``else``, ``elseif``, ``unless``, ``while``, ``until``, ``case``, and ``for``. A condition statement can test for:

* A |ruby| class (such as ``::File`` or ``::String``)
* A ``Chef`` class (such as ``::Chef::Mixin::ShellOut``)
* Conditions present on the node by using ``@current_resource``
* Conditions present within the resource being processed by the |chef client| during the |chef client| run by using ``new_resource`` or ``@new_resource``
* To verify if a resource was updated by using ``updated_by_last_action``, for example: ``@new_resource.updated_by_last_action``

and so on.

For example, an ``if`` statement is used to check if a file exists (``::File.exists?``), and then if the file exists to delete a key from that file.

.. code-block:: ruby

   action :remove do
     if File.exist?('/etc/pki/rpm-gpg/#{new_resource.key}')
       Chef::Log.info 'Removing #{new_resource.key} key from /etc/pki/rpm-gpg/'
       file '/etc/pki/rpm-gpg/#{new_resource.key}' do
         action :delete
       end
       new_resource.updated_by_last_action(true)
     end
   end

In the following example an ``unless`` statement is used to add a key, unless that node object already has that key assigned to it:

.. code-block:: ruby

   unless new_resource.url.nil?
     remote_file '/etc/pki/rpm-gpg/#{new_resource.key}' do
       source new_resource.url
       mode '0644'
       notifies :run, 'execute[import-rpm-gpg-key-#{new_resource.key}]', :immediately
     end
   end
   
   action :add do
     unless File.exist?('/etc/yum.repos.d/#{new_resource.repo_name}.repo')
       Chef::Log.info 'Adding #{new_resource.repo_name} repository to /etc/yum.repos.d/#{new_resource.repo_name}.repo'
       repo_config
     end
   end
