.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``attribute`` method is used to define a list of properties and any of those property's associated validation parameters. The syntax for the ``attribute`` method is as follows:

.. code-block:: ruby

   attribute :property_name :validation_parameter => value, :validation_parameter => value

where ``attribute`` must have an property name and zero (or more) validation parameters.
