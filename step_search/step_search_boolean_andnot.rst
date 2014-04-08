.. This is an included how-to. 

To perform an ``AND NOT`` type of search, use the ``-`` (dash) symbol instead of ``NOT``, e.g. ``AND -id:foo``. (Using ``AND NOT`` in a search query may trigger an error.) For example, use:

.. code-block:: bash

   $ knife search sample "id:foo AND -id:bar"

and not:

.. code-block:: bash

   $ knife search sample "id:foo AND NOT id:bar"
