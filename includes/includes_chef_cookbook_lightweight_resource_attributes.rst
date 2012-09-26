.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The attributes available to a lightweight resource are custom to each action. They are defined using the ``attribute`` keyword and may be assigned on (or more) validation parameters. Attributes are defined using the following syntax:

.. code-block:: ruby

   attribute :attribute_name, :validation_parameter => value

where the ``:validation_parameter`` is optional. (Attributes that do not have a validation parameter assigned to them will not require the defined validation when the action it is associated with is run from a recipe.) More than one attribute can be defined.


