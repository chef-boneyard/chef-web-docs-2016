.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following example shows provisioner settings for running the |chef client| in |chef client_audit|:

.. code-block:: yaml
   
   ---
   driver:
     name: vagrant
     customize:
       memory: 1024
       cpus: 2
   
   provisioner:
     name: chef_zero
     client_rb:
       audit_mode: :enabled
   
   platforms:
     - name: ubuntu-14.04
       run_list:
         - recipe[audit-cis::ubuntu1404-100]
     - name: centos-7.0
       run_list:
         - recipe[audit-cis::centos7-100]
     - name: centos-6.6
       run_list:
       - recipe[audit-cis::centos6-110]
   
   suites:
     - name: default

where ``audit_mode`` may be ``:enabled``, ``:disabled`` (default), or ``:audit_only``.
