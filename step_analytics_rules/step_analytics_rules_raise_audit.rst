.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following rule raises an alert when a ``run_control_group`` fails, signifying that one or more controls failed:

.. code-block:: java

   rules "throw errors on control group failure"
     rule on run_control_group
     when
       true
     then
       // the run_control_group name will appear in double quotes
       alert:info("Run control group \"{{ message.name }}\" failed on {{ message.run.node_name }}")
     end
   end
