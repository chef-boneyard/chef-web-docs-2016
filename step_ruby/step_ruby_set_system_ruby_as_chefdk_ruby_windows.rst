.. This is an included how-to.

You can use ``chef shell-init`` with |windows powershell|.

To try it in your current session:

.. code-block:: bash

   chef shell-init powershell | Invoke-Expression

To enable it permanently:

.. code-block:: bash

   "chef shell-init powershell | Invoke-Expression" >> $PROFILE
