.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following rule shows using a regular expression:

.. code-block:: ruby

   rules "user-agent matching"
     rule on action
     when
       get(#user_agent, false) != false
     then
       log("Something else set #user_agent")
     end
   
     rule on action
     when
       // match if the user_agent starts with the string "Chef Manage"
       user_agent =~ "Chef Manage.*"
     then
       // if #user_agent has been set before
       // this command will overwrite it's value
     set(#user_agent, "Chef Manage")
     end
   
     rule on action
     when
       // match if the user_agent starts with the string "Chef Client"
       user_agent =~ "Chef Client.*"
     then
       set(#user_agent, "Chef Client")
     end
   
     rule on action
     when
       get(#user_agent, false) != false
     then
       alert:info("User agent {{user_defined_values.#user_agent}}")
     end
   end
