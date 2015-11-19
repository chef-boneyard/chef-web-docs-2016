.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for opscode-analytics-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef analytics| stores |ohai| data for every |chef client| run. This data often takes up a considerable amount of disk space in |postgresql|, which may lead to capacity and performance issues. A ``purge-nodes`` command has been added to ``opscode-analytics-ctl``, which destructively removes node data from |postgresql|.

To purge the |chef analytics| database of node information, run the following commands:

.. code-block:: bash

   $ opscode-analytics-ctl stop
   $ opscode-analytics-ctl start postgresql
   $ opscode-analytics-ctl purge-nodes

This command may take some time to run. Upon completion, restart |chef analytics|:

.. code-block:: bash

   $ opscode-analytics-ctl start
