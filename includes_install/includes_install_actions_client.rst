.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef actions| is automatically enabled in the |chef client| and |knife| (version 11.12.0 or later).
In order to check if chef actions data is being sent, you can check the output of the chef client DEBUG logging level for the log message
confirming the data has been sent.


.. code-block:: bash

   $ chef-client -l debug
   ...
   ...

This includes the X-REMOTE-REQUEST-ID header of the chef server interactions in the run, which can be used in the
`knife actions plugin <http://docs.opscode.com/enterprise/plugin_knife_actions.html>`_ or the analytics console to access the actions
information generated.

