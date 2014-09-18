.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``action`` message type to build rules for messages about any action that occurs on the |chef server|.

The syntax for this message type:

.. code-block:: java

   rule(action) when
     ...
   then
     ...
   otherwise
     ...

For example, a rule that always fires:

.. code-block:: java

	rule (action) when
	  true
	then
	   ...

A rule that always calls its ``otherwise`` section:

.. code-block:: java

	rule(action) when
     true
   then
     log("Shouldn't get here")
   otherwise
     log("Hello world")  

A rule that contains nested fields:

.. code-block:: java

   rule(action) when
     error.description.title = "Something"
   ...

Fields that don't exist simply return ``false`` for that part of the predicate.