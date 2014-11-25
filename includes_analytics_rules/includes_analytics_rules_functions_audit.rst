.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``audit:<level>()`` to generate an audit.

The syntax for this function:

.. code-block:: ruby

   audit:<level>(description)

where:

* ``<level>`` is the audit level: ``error``, ``info``, or ``warn``
* ``description`` is a user-defined value (and may be a |mustache| template)
