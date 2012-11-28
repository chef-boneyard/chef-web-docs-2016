.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``unshare`` argument is used to stop the sharing of a cookbook at |url cookbook|. Only the maintainer of a cookbook may perform this action.

This argument has the following syntax::

   knife cookbook site unshare COOKBOOK_NAME

This argument does not have any argument-specific options.

**Examples**

For example, to unshare a cookbook named "getting-started", enter:

.. code-block:: bash

   $ knife cookbook site unshare getting-started



