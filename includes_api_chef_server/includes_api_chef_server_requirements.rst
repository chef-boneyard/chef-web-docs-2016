.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

REQUIREMENTS.
There are requirements in order to interact with the |api chef server|. In order to make any of these API calls, you will need to satisfy these pre-requisites:

* Have |chef| 0.9.x or above
* Set your ``Accept`` header to "application/json"
* Set your ``X-Chef-Version`` header to the version of the API that is being used
* Sign your request with ``Mixlib::Authentication``
* The easiest way to ensure a well formatted request is to use the ``Chef::REST`` library bundled with |chef|.
