.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The actions available to a lightweight resource are custom to each lightweight resource. They are defined using the ``action`` keyword using a comma-separated list to define multiple actions. Actions are defined using the following syntax:

.. code-block:: ruby

   actions :action_name, :action_name

where ``:action_name`` could be ``:create``, ``:delete``, ``:execute`` and so on. Each action requires a definition to be present in a lightweight provider. When more than one action is present in the lightweight resource, the additional actions will append to the list of allowed actions (and not overwrite them).
