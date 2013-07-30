.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The list of automatic attributes that are collected by |ohai| at the start of each |chef client| run vary from organization to organization, and will often vary between the various server types being configured and the platforms on which those servers are run. All attributes collected by |ohai| are unmodifiable. To see which automatic attributes are collected by |ohai| for a particular node, run the following command:

.. code-block:: bash

   ohai$ grep -R "provides" -h lib/ohai/plugins|sed 's/^\s*//g'|sed "s/\\\"/\'/g"|sort|uniq|grep ^provides