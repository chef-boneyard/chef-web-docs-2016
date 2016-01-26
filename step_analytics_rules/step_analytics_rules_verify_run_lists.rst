.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following rule verfies if a specific role appears in a run-list:

.. code-block:: ruby

   rules "Check a converge run_list"
     rule on run_converge
     when
       array:contains(run_list, 'role[opscode-reporting]')
     then
       alert:info("run_list contains role[opscode-reporting]")
     end
   end
