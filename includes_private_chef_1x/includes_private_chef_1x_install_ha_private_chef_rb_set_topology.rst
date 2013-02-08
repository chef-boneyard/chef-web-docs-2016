.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Add the following line to your configuration file:

Set the topology in ``private-chef.rb``

.. code-block:: ruby

   topology "ha"

This lets private chef know that these servers will be in a horizontally scalable configuration with a highly-available back-end.


