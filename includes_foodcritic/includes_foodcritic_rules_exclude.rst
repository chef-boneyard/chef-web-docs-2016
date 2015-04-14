.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Run the following command to exclude a |foodcritic| rule:

.. code-block:: bash

   $ foodcritic . --tags ~RULE

For example, to exclude rule ``FC003``:

.. code-block:: bash

   $ foodcritic . --tags ~FC003
