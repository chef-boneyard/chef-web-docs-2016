.. This is an included file that describes a sub-command or argument in Knife.


The ``unshare`` argument is used to stop the sharing of a cookbook at |url cookbook|. Only the maintainer of a cookbook may perform this action.

This argument has the following syntax::

   knife cookbook site unshare COOKBOOK_NAME

This argument does not have any options.

For example, to unshare a cookbook named "getting-started", enter:

.. code-block:: bash

   $ knife cookbook site unshare getting-started



