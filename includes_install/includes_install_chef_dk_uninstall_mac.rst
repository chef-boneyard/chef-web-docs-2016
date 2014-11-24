.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

Use the following commands to remove the |chef dk| on |mac os x|.

To remove installed files:

.. code-block:: bash

   $ sudo rm -rf /opt/chefdk

To remove the system installation entry:

.. code-block:: bash

   $ sudo pkgutil --forget com.getchef.pkg.chefdk

To remove the symlinks under ``/usr/bin``:

.. code-block:: bash

   $ find /usr/bin -lname '/opt/chefdk/*' -delete
