.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef (the executable).
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following syntax:

To create machines that operate using only a local |policyfile rb|:

.. code-block:: bash

   $ chef provision POLICY_GROUP --policy-name POLICY_NAME (options)

To create machines that operate using a |policyfile rb| that is synchronized with the |chef server| before each |chef client| run:

.. code-block:: bash

   $ chef provision POLICY_GROUP --sync PATH (options)

To create machines that will not use a |policyfile rb| file:

.. code-block:: bash

   $ chef provision --no-policy (options)
