.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following rule shows how to define a rule that sends a notification when a machine is listening for connections on port 23:

.. code-block:: ruby

   rules "pci check telnet port"
     rule on run_control
     when
       name = "should be listening" and
       resource_type = "port" and
       resource_name = 23 and
       status != "success"
     then
       alert:error("Encrypt all non-console administrative access such as browser/Web-based management tools.")
       notify("some_alias", "A machine is listening for connections on port 23!")
     end
   end