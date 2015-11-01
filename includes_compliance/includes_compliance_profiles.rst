.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Compliance profiles exist for many scenarios, such as those created by the Center for Internet Security (CIS), a non-profit organization that is focused on enhancing the cyber security readiness and response of public and private sector entities.

|chef compliance| maintains profiles as a collection of individual rules that comprise a complete audit. For example, CIS benchmark 8.1.1.1 recommends testing for the maximum size of the audit log. The following example shows a rule that can test for this benchmark:

.. code-block:: ruby

   rule 'cis-network-8.1.1.1' do
     impact 0.2
     title '8.1.1.1 Configure Audit Log Storage Size'
	 desc '
       Determine the maximum size of the audit log file.
     '
     describe auditd_conf do
       its('max_log_file') { should_not eq nil }
     end
   end

Compliance profiles are built and maintained from the |chef compliance| server web UI. The results of running these profiles against any number of nodes in your infrastructure is available as a report summary.

.. image:: ../../images/compliance_report.png
   :width: 600px
   :align: center
