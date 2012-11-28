.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``edit`` argument is used to edit the attributes of an environment. When this argument is run, |knife| will open $EDITOR to enable editing of ENVIRONMENT attributes. When finished, |knife| will update the |chef server| with those changes. 

This argument has the following syntax::

   knife environment edit ENVIRONMENT_NAME

This argument does not have any argument-specific options.

**Examples**

For example, to edit an environment named "devops", enter:

.. code-block:: bash

   $ knife environment edit devops



