.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|knife delete| This sub-command works similar to ``knife cookbook delete``, ``knife data bag delete``, ``knife environment delete``, ``knife node delete``, and ``knife role delete``, but with a single verb (and a single action).

This subcommand has the following syntax::

   knife delete [PATTERN...] (options)

This subcommand has the following options:

``--recurse``
   |no_recurse_delete| Default: ``--no-recurse``.
