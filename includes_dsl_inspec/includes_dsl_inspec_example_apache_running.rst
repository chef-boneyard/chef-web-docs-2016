.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following test shows how to audit machines to ensure that |apache| is enabled and running:

.. code-block:: ruby

   rule 'apache-1' do
     impact 0.3
     title 'Apache2 should be configured and running'
     describe service(apache.service) do
       it { should be_enabled }
       it { should be_running }
     end
   end
