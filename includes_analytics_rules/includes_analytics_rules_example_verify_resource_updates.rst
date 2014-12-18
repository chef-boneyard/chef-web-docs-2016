.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following rule verifies if resources have been updated on a ``run_converge``:

.. code-block:: java

   rules "Match a run converge"
     rule on run_converge
     when
       total_resource_count > 1 and 
       updated_resource_count > 0
     then
       audit:info("Run converge detected at {{ message.end_time }} ")
     end
   end
