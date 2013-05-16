.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the following methods within the attributes file for a cookbook or within a recipe. These methods correspond to the attribute type of the same name:

* ``override``
* ``default``
* ``normal`` (or ``set``, where ``set`` is an alias for ``normal``)
* ``_unless``
* ``attribute?``

Additionally, there are ``_unless`` methods available. See the end of this topic for information on how to conditionally set attributes

Another useful method available related to attributes is the ``attribute?`` method. This will check for the existence of an attribute, so you can do processing in an attributes file or recipe only if a specific attribute exists.

Using ``attribute?()`` in attributes file:

.. code-block:: ruby

   if attribute?("ec2")
     # ... set stuff related to EC2
   end

Using ``attribute?()`` in recipe:

.. code-block:: ruby

   if node.attribute?("ec2")
     # ... do stuff on EC2 nodes
   end

In the recipe, we need to use the method on the node object. In the attributes file, the node object is implicit. In either, we can also look for a sub-key of an attribute by chaining the attribute as methods. Using ``attribute?()`` in recipe:

.. code-block:: ruby

   if node.chef.attribute?("webui_enabled")
     # set up webui stuff
   end