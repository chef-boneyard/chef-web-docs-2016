.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| can be installed on machines running |windows| in the following ways:

* By using the :doc:`knife windows </plugin_knife_windows>` plugin to bootstrap the |chef client|; this process requires the target node be available via |ssh| (port 22) or by using the HTTP or HTTPS ports that are required by |windows remote management|
* By downloading the |chef client| to the target node, and then running the |microsoft installer package| locally
* By using an existing process already in place for managing |windows| machines, such as |windows server system_center|

To run the |chef client| at periodic intervals (so that it can check in with the |chef server| automatically), configure the |chef client| to run as a service or as a scheduled task. (The |chef client| can be configured to run as a service during the setup process.)





