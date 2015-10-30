.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A ``auditd_rules`` |inspec resource| block declares one (or more) rules to be tested, and then what that rule should do:

.. code-block:: ruby
   
   describe auditd_rules do
     its('LIST_RULES') { should eq [
      'exit,always syscall=rmdir,unlink',
      'exit,always auid=1001 (0x3e9) syscall=open',
      'exit,always watch=/etc/group perm=wa',
      'exit,always watch=/etc/passwd perm=wa',
      'exit,always watch=/etc/shadow perm=wa',
      'exit,always watch=/etc/sudoers perm=wa',
      'exit,always watch=/etc/secret_directory perm=r',
    ] }
   end

or:

.. code-block:: ruby

   audit = command('/sbin/auditctl -l').stdout
     options = {
       assignment_re: /^\s*([^:]*?)\s*:\s*(.*?)\s*$/,
       multiple_values: true
     }
   
   describe auditd_rules(audit, options) do
     its('rule') { should eq 1 }
   end

where each test

* Must declare one (or more) rules to be tested
* May run a command to ``stdout``, and then run the test against that output
* May use options to define how configuration data is to be parsed
