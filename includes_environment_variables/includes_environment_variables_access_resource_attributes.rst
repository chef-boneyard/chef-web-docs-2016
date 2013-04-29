.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

If you are starting a processes by using an execute or script resource, you can use the environment attribute to alter the environment that will be passed to the process.

.. code-block:: bash

   bash "env_test" do
     code<<-EOF
     echo $FOO
   EOF
     environment { 'FOO' => "bar" }
   end

Note that the only environment being altered is the environment being passed to the child process being started by the bash resource. This will not affect the environment of chef-client or subsequently started child processes.
