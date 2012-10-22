.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``show`` sub-command is used to view the details of one (or more) objects on the |chef server|. This sub-command works similar to ``knife cookbook show``, ``knife data bag show``, ``knife environment show``, ``knife node show``, and ``knife role show``, but with a single verb (and a single action).

This sub-command has the following syntax::

   knife show [PATTERN...] (options)

This argument does not have any argument-specific options.

For example, to show all cookbooks in the ``cookbooks/`` directory:

.. code-block:: bash

   $ knife show cookbooks/

or, (if already in the ``cookbooks/`` directory in the local |chef| repository):

.. code-block:: bash

   $ knife show

To show roles and environments:

.. code-block:: bash

   $ knife show roles/ environments/