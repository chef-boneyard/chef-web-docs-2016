.. This is an included how-to. 


A |chef client| run is stopped after a fatal message is sent to the logger and ``STDERR``. For example:

.. code-block:: ruby

   Chef::Application.fatal!("log_message", error_code) if condition

where ``condition`` defines when a ``log_message`` and an (optional) ``error_code`` are sent to the logger and ``STDERR``, after which the |chef client| will exit.

.. note:: This approach should be used carefully when the |chef client| is run as a daemonized service. Some services---such as a runit service---should restart, but others---such as init.d services---likely will not.
