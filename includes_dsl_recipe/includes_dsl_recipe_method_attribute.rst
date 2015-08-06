.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``attribute?`` method to ensure that certain actions only execute in the presence of a particular node attribute. The ``attribute?`` method will return true if one of the listed node attributes matches a node attribute that is detected by |ohai| during every |chef client| run. 

The syntax for the ``attribute?`` method is as follows:

.. code-block:: ruby

   attribute?('name_of_attribute')

For example: 

.. code-block:: ruby

   if node.attribute?('ipaddress')
     # the node has an ipaddress
   end
