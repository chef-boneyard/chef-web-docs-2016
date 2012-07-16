.. This is an included file that describes a sub-command or argument in Knife.


The ``edit`` argument is used to edit the attributes of an environment. When this argument is run, |knife| will open $EDITOR to enable editing of ENVIRONMENT attributes. When finished, |knife| will update the |chef server| with those changes. 

This argument has the following syntax::

   knife environment edit ENVIRONMENT_NAME

For example, to edit an environment named "devops", enter:

.. code-block:: bash

   $ knife environment edit devops



