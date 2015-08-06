.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``run_report_unsafe`` method is used to run the report handler without any error handling. This method should never be used directly in any handler, except during testing of that handler. For example:

.. code-block:: ruby

   def run_report_unsafe(run_status)
     @run_status = run_status
     report
   end
