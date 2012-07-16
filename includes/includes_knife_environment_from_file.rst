.. This is an included file that describes a sub-command or argument in Knife.


The ``from file`` argument is used to add or update an environment using a JSON or Ruby DSL description. It must be run with the ``create`` or ``edit`` arguments.

This argument has the following syntax::

   knife environment [create | edit] from file FILE

This argument does not have any options.

For example:

.. code-block:: bash

   $ knife environment create devops from file "path to file"

Or:

.. code-block:: bash

   $ knife environment edit devops from file "path to file"


