.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Sometimes it may be necessary to end a |chef client| run before it completes. There are a few ways to do this:

* Using the ``return`` keyword and a condition
* Using the ``raise`` keyword to trigger an unhandled exception
* Using the ``rescue`` block in |ruby| code
* Using ``Chef::Application.fatal!`` to log a fatal message to the logger and ``STDERR``
* Using an exception handler