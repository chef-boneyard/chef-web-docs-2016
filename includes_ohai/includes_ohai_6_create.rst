.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When additional data about a system infrastructure is required, a custom |ohai| plugin can be used to gather that information. An |ohai| plugin is a |ruby| DSL. For example, the following is about as simple as it gets:

.. code-block:: ruby

   provides "orly"
   orly "yeah, rly."