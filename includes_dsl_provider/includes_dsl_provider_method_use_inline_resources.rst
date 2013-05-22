.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A lightweight resource is created by the ``action`` block of a lightweight provider. When the resource collection is compiled, and as a lightweight resource is discovered by |chef|, each lightweight resource is inserted into the resource collection after the point at which it was discovered. For example, a resource collection may start out like this:

.. code-block:: ruby

   resource_one
   resource_two
   resource_three

If a lightweight resource is discovered while processing the second resource, it will be inserted into the resource collection like this:

.. code-block:: ruby

   resource_one
   resource_two
     lightweight_resource_one
   resource_three

If that lightweight resource then contains references to other |chef| resources (like |resource file|, |resource template|, or |resource cookbook_file|), then those additional resources are inserted into the resource collection in much the same way as a lightweight resource. For example:

.. code-block:: ruby

   resource_one
   resource_two
     lightweight_resource_one
       embedded_resource_a
       embedded_resource_b
   resource_three

where resources are processed in exactly the same order as defined by the resource collection. In addition, each resource is processed fully before |chef| moves on to the next resource in the resource collection. 

This behavior can create a situation where |chef| resources that have been embedded into the resource collection by a lightweight resource are unable to notify their parent lightweight resource when processing is finished. For example:

.. code-block:: ruby

   resource_one
     lightweight_resource_one
       a
       b
   resource_two
     lightweight_resource_two
       c
   resource_three

where embedded resources ``a`` and ``b`` would be unable to notify ``lightweight_resource_one`` and embedded resource ``c`` would be unable to notify ``lightweight_resource_two``.

This is the default behavior of |chef|. This may not be the desired behavior. To change the default behavior so that |chef| can notify its parent lightweight resource, use the ``use_inline_resources`` method at the top of the lightweight provider. This ensures that |chef| executes the ``action`` blocks within that lightweight resource as part of a self-contained |chef| run. Once notified, the parent lightweight resource is marked as updated (``updated_by_last_action``) and then any notifications that are set on that lightweight resource may be triggered normally.


