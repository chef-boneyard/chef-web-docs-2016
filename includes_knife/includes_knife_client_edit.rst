.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``edit`` argument is used to edit the details of a registered |chef api client|. When this argument is run, |knife| will open |chef editor| to enable editing of the ``admin`` attribute. (None of the other attributes should be changed using this argument.) When finished, |knife| will update the |chef server| with those changes. 

This argument has the following syntax::

   knife client edit CLIENT_NAME

This argument does not have any argument-specific options.

For example, to edit a client with the name "exampleorg-validator", enter:

.. code-block:: bash

   $ knife client edit exampleorg-validator




