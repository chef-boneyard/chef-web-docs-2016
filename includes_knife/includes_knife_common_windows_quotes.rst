.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When running |knife| in |windows|, a string may be interpreted as a wildcard pattern when quotes are not present in the command. The number of quotes to use depends on the shell from which the command is being run.

When running |knife| from the command prompt, a string should be surrounded by single quotes (``' '``). For example:

.. code-block:: bash

   $ knife node run_list set test-node 'recipe[iptables]'

When running |knife| from |windows powershell|, a string should be surrounded by triple single quotes (``''' '''``). For example:

.. code-block:: bash

   $ knife node run_list set test-node '''recipe[iptables]'''
