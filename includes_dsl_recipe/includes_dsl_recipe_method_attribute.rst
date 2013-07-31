.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``attribute?`` method can be used in a recipe to ensure that certain actions based on the presence of a certain attribute. The ``attribute?`` method will return true if one of the listed attributes matches an attribute that is detected by |ohai| during every |chef client| run. The syntax for the ``attribute?`` method is as follows:

.. code-block:: ruby

   attribute?("name_of_attribute")

For example: 

.. code-block:: ruby

   if node.attribute?('ipaddress')
     # the node has an ipaddress
   end

