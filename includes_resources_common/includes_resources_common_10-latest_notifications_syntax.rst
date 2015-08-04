.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The basic syntax of a notification is:

.. code-block:: ruby

   notifies ( [ {resources('execute[something]') => [:notification, :timer] } ] )

and to specify multiple notifications in a single call:

.. code-block:: ruby

   notifies ( [ {resources('execute[something]') => [:notification, :timer]},
   {resources('execute[something]') => [:notification, :timer]},
   {resources('execute[something]') => [:notification, :timer]} ] )
