.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Sometimes it may be necessary to stop processing a recipe and/or stop processing the entire |chef client| run. There are a few ways to do this:

* Use the ``return`` keyword to stop processing a recipe based on a condition, but continue processing the |chef client| run 
* Use the ``raise`` keyword to stop a |chef client| run by triggering an unhandled exception
* Use a ``rescue`` block in |ruby| code
* Use an `exception handler <http://docs.opscode.com/handlers.html>`_
* Use ``Chef::Application.fatal!`` to log a fatal message to the logger and ``STDERR``, and then stop the |chef client| run


