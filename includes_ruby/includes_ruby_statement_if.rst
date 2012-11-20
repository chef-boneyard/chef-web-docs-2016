.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An ``if`` statement can be used to specify part of a recipe to be used when certain conditions are met. ``else`` and ``elseif`` statements can be used to handle situations where either the initial condition is not met or when there are other possible conditions that can be met. Since this behavior is 100% |ruby|, do this in a recipe the same way here as anywhere else.

For example, using an ``if`` statement with the ``platform`` method:

.. code-block:: ruby

   if node["platform"] == "ubuntu"
     # do ubuntu things
   end

