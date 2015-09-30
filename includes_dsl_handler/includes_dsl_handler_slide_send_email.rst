.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``on`` method to create an event handler that sends email when the |chef client| run fails. This will require:

* A way to tell the |chef client| how to send email
* An event handler that describes what to do when the ``:run_failed`` event is triggered
* A way to trigger the exception and test the behavior of the event handler
