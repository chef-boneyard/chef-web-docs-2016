.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``rule`` syntax is visible in the |chef compliance| web user interface. For example, the following rule:

.. code-block:: ruby

   rule 'basic-1' do
     impact 1.0
     title '/etc/ssh should be a directory'
     desc "
       In order for OpenSSH to function correctly, its
       configuration path must be a folder.
     "
     describe file('/etc/ssh') do
       it { should be_directory }
     end
   end

if the previous example is grouped as part of a profile section named "Sysctl IPv4 settings", then it will display in the web user interface similar to:

.. image:: ../../images/dsl_inspec_webui.svg
   :width: 600px
   :align: center
