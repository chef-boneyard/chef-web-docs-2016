.. This is an included file that describes a sub-command or argument in Knife.


The ``edit`` argument is used to edit the details of a registered |chef| client. When this argument is run, |knife| will open $EDITOR to enable editing of ENVIRONMENT attributes. When finished, |knife| will update the |chef server| with those changes. 

This argument has the following syntax::

   knife client edit CLIENT_NAME

This argument does not have any options.

For example, to edit a client with the name "exampleorg-validator", enter:

.. code-block:: bash

   $ knife client edit exampleorg-validator




