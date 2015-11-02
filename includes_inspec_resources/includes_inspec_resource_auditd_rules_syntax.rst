.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


An ``auditd_rules`` |inspec resource| block declares one (or more) rules to be tested, and then what that rule should do:

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

or test that individual rules are defined:

.. code-block:: ruby

   describe auditd_rules do
     its('LIST_RULES') {
       should contain_match(/^exit,always watch=\/etc\/group perm=wa key=identity/) 
     }
     its('LIST_RULES') {
       should contain_match(/^exit,always watch=\/etc\/passwd perm=wa key=identity/) 
     }
     its('LIST_RULES') {
       should contain_match(/^exit,always watch=\/etc\/gshadow perm=wa key=identity/) 
     }
     its('LIST_RULES') {
       should contain_match(/^exit,always watch=\/etc\/shadow perm=wa key=identity/) 
     }
     its('LIST_RULES') {
       should contain_match(/^exit,always watch=\/etc\/security\/opasswd perm=wa key=identity/) 
     }
   end

where each test must declare one (or more) rules to be tested.
