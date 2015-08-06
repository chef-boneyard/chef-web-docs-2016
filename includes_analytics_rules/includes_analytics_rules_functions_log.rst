.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``log()`` to generate a message using the configured logger as a string.

The syntax for this function:

.. code-block:: ruby

   log(messageToLog)

where:

* ``messageToLog`` is the message that is added to the log

For example:

.. code-block:: ruby

   log('Added rule for org <obj.organization_name>')
