.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines running |windows| 2008 (and newer) to audit the log file size maximum for the system event log:

.. code-block:: ruby

   rule 'windows-audit-102' do
     impact 0.1
     title 'Configure System Event Log (Setup)'
     desc 'only appies for Windows 2008 and newer'
     describe group_policy('Windows Components\\Event Log Service\\Setup') do
       its('Specify the maximum log file size (KB)') { should eq nil }
     end
   end
