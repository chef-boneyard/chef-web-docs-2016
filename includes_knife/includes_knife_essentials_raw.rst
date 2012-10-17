.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``raw`` argument is used to send a REST request a specified path using the |api chef server|.

This sub-command has the following syntax::

   knife raw REQUEST_PATH (options)

This sub-command has the following options:

``-i FILE``, ``--input FILE``
   The name of a file to be used with the ``PUT`` or a ``POST`` request.

``--[no-]pretty``
   Use ``--no-pretty`` to disable |prettyprint| output for |json|. |prettyprint| output is enabled by default.

``-m METHOD``, ``--method METHOD``
   The request method: ``DELETE``, ``GET``, ``POST``, or ``PUT``.

For example, to xxxxx:

.. code-block:: bash

   $ knife xxxxx

To xxxxx:

.. code-block:: bash

   $ knife xxxxx