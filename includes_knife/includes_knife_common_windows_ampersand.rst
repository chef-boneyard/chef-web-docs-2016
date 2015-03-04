.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When running |knife| in |windows|, an ampersand (``&``) is a special character and must be protected by quotes when it appears in a command. The number of quotes to use depends on the shell from which the command is being run.

When running |knife| from the command prompt, an ampersand should be surrounded by quotes (``"&"``). For example:

.. code-block:: bash

   $ knife bootstrap windows winrm -P "&s0meth1ng"

When running |knife| from |windows powershell|, an ampersand should be surrounded by triple quotes (``"""&"""``). For example:

.. code-block:: bash

   $ knife bootstrap windows winrm -P """&s0meth1ng"""
