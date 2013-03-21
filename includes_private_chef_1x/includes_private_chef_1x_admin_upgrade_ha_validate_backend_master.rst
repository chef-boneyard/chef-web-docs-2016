.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Next, wait until the load average of the server has dropped by watching top until the load average on the server is below 1.00 and the server has finished initializing. Then run the test suite against the backend by running the command on the upgraded backend master:

.. code-block:: bash

    $ private-chef-ctl test

If this test succeeds without any red failing tests, proceed to the next step.