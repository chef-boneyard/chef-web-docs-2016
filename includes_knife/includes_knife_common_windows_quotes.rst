.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.


When running |knife| in |windows|, a string may be interpreted as a wildcard pattern when quotes are not present in the command. The number of quotes to use depends on the shell from which the command is being run.

When running |knife| from the command prompt, a string should be surrounded by single quotes (``' '``). For example:

.. code-block:: bash

   $ knife node run_list set test-node 'recipe[iptables]'

When running |knife| from |windows powershell|, a string should be surrounded by triple single quotes (``''' '''``). For example:

.. code-block:: bash

   $ knife node run_list set test-node '''recipe[iptables]'''
