.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Add the following line to the |private chef rb| configuration file:

.. code-block:: ruby

   topology "tier"

This lets |chef private| know that these servers will be in a horizontally scalable configuration with a single, non-highly-available back-end.