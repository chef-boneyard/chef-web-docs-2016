.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for test-kitchen.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following syntax:

.. code-block:: bash

   $ inspec detect (options)

For example, if the configuration on the target is:

.. code-block:: bash

   id=$( docker run -dti ubuntu:14.04 /bin/bash )

the following command:

.. code-block:: bash

   $ inspec detect -t docker://$id

will return:

.. code-block:: javascript

   {"family":"ubuntu","release":"14.04","arch":null}
