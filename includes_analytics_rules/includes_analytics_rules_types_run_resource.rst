.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``run resource`` message type to build rules for messages that are sent by |reporting| as each resource is converged during a |chef client| run.

The syntax for this message type:

.. code-block:: java

   rule(run resource) when
     ...
   then
     ...
   otherwise
     ...


