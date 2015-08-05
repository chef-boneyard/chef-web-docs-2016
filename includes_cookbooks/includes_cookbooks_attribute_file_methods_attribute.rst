.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A useful method that is related to attributes is the ``attribute?`` method. This method will check for the existence of an attribute, so that processing can be done in an attributes file or recipe, but only if a specific attribute exists.

Using ``attribute?()`` in an attributes file:

.. code-block:: ruby

   if attribute?('ec2')
     # ... set stuff related to EC2
   end

Using ``attribute?()`` in a recipe:

.. code-block:: ruby

   if node.attribute?('ec2')
     # ... do stuff on EC2 nodes
   end
