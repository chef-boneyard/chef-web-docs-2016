.. This is an included how-to. 

If a log entry is required, use ``Chef::Application.fatal!`` to log a fatal message to a log file using standard error output. After the log message is sent, |chef| will stop the run. Something like the following can be used to trigger this type of log entry:

.. code-block:: ruby

   Chef::Application.fatal!("Didn't expect some_condition", return_code) if some_condition

where ``some_condition`` is the condition to be met, ``return_code`` is the code that will be identified in the log entry. When this condition is met, |chef| will exit, send a log message and return the code specified with ``return_code`` from the process.
