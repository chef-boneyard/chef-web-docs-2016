.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When running |knife| from the command prompt in |windows|, a string should be surrounded by single quotes (``' '``) to prevent the string from being interpreted as a wildcard pattern. For example:

.. code-block:: bash

   $ knife exec -E 'puts ARGV' 'recipe[iptables]'

should return something like:

.. code-block:: bash

   WARNING: No knife configuration file found
   exec
   -E
   puts ARGV
   recipe[iptables]

When running |knife| from |windows powershell|, a string should be surrounded by triple single quotes (``''' '''``) to prevent the string from being interpreted as an internal pattern. For example:

.. code-block:: bash

   $ knife exec -E 'puts ARGV' '''recipe[iptables]'''

should return something like:

.. code-block:: bash

   WARNING: No knife configuration file found
   exec
   -E
   puts ARGV
   recipe[iptables]
