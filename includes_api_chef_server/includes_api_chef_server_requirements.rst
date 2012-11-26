.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |api chef server| has the following requirements:

* Access to a |chef server| running |chef| 0.9.x or above
* The ``Accept`` header must be set to "application/json"
* The ``X-Chef-Version`` header must be set to the version of the |api chef server| that is being used
* A request must be signed using ``Mixlib::Authentication``
* A request must be well-formatted. The easiest way to ensure a well-formatted request is to use the ``Chef::REST`` library that is bundled with |chef|.
