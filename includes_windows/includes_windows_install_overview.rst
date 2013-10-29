.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| can be installed on machines running |windows| in the following ways:

* By using the :doc:`knife windows </plugin_knife_windows>` plugin to bootstrap the |chef client|; this process requires that the target node be accessible via HTTP or HTTPS
* By downloading the |chef client| to the target node, and then running the |microsoft installer package| locally
* By using an existing process already in place for managing |windows| machines, such as |windows server system_center|

The |chef client| must be run as a service for it to be able to run at a defined interval. If the |chef client| is not run as a service, then the |chef client| must be run from the command line.

.. note:: Verify that ``C:\opscode\chef\bin`` and ``embedded\bin`` are added to the ``PATH`` environment variable in |windows|. This is typically set during the installation of the |chef client|; if these values are not in the ``PATH`` environment variable, the |chef client| will not run properly.