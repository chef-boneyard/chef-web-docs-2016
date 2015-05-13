.. This is an included how-to.

You can use ``chef shell-init`` with PowerShell on Windows.

To try it in your current session:

.. code-block:: bash

   posh chef shell-init powershell | Invoke-Expression

To enable it permanently:

.. code-block:: bash

   posh "chef shell-init powershell | Invoke-Expression" >> $PROFILE
