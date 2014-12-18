.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following rule raises an audit when ``run_converge`` or ``run_control_group`` is matched:

.. code-block:: java

   rules "Match a run converge"
     rule on run_converge
     when
       true
     then
       audit:info("Run converge detected at {{ message.end_time }} ")
     end
   
     rule on run_control_group
     when
       true
     then
       // the run_control_group name will appear in double quotes
       audit:info("Run control group \"{{ message.name }}\" detected")
     end
   end
