.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``list`` argument is used to view a list of objects on the |chef server|. This sub-command works similar to ``knife cookbook list``, ``knife data bag list``, ``knife environment list``, ``knife node list``, and ``knife role list``, but with a single verb (and a single action).

This sub-command has the following syntax::

   knife list [PATTERN...] (options)

This sub-command has the following options:

``-d``
   Indicates that directories will be listed recursively.

``-R``
   Indicates that a directory's children will not be shown when a directory matches a pattern.

For example, to view a list of roles on the |chef server|:

.. code-block:: bash

   $ knife list roles/

To view a list of roles and environments on the |chef server|:

.. code-block:: bash

   $ knife list roles/ environments/