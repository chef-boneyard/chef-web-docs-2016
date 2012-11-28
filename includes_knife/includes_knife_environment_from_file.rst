.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``from file`` argument is used to add or update an environment using a JSON or Ruby DSL description. It must be run with the ``create`` or ``edit`` arguments.

This argument has the following syntax::

   knife environment [create | edit] from file FILE (options)

This argument does not have any argument-specific options.

**Examples**

For example:

.. code-block:: bash

   $ knife environment create devops from file "path to file"

or:

.. code-block:: bash

   $ knife environment edit devops from file "path to file"


