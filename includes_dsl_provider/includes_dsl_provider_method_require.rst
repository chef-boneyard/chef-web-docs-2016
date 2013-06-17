.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``require`` method is used point |chef| to the location of an external class library.

For example:

.. code-block:: ruby

   require path/to/external/library

|chef| will attempt to fully qualify the name of any class by prepending ``Chef::`` to the loaded class. For example both:

.. code-block:: ruby

   require Chef::Mixin::ShellOut

and:

.. code-block:: ruby

   require Mixin::ShellOut

are both understood by |chef| in the same way: ``Chef::Mixin::ShellOut``.

When a class is an external class (and therefore should not have ``Chef::`` prepended), use ``::`` to let |chef| know. For example:

.. code-block:: ruby

   ::External::Class::Library







