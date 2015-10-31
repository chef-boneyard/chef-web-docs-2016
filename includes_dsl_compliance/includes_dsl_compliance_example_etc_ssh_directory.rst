.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines to ensure that ``/etc/ssh`` is a directory:

.. code-block:: ruby

   rule 'basic-1' do
     impact 1.0
     title '/etc/ssh should be a directory'
     desc '
       In order for OpenSSH to function correctly, its
       configuration path must be a folder.
     '
     describe file('/etc/ssh') do
       it { should be_directory }
     end
   end
