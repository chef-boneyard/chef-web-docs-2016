.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines for periodic file checking to allow a system administrator to determine on a regular basis if critical files have been changed in an unauthorized fashion:

.. code-block:: ruby

   rule 'cis-network-8.3.2' do
     impact 0.7
     title '8.3.2 Implement Periodic Execution of File Integrity'
     describe cron do
       it { should have_entry('0 5 * * * /usr/sbin/aide --check') }
     end
   end
