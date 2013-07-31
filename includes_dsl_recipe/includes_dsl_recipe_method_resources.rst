.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``resources`` method can be used in a recipe to look up a resource in the resource collection. The ``resources`` method's return value is the resource that it finds in the resource collection. The preferred syntax for the ``resources`` method is as follows:

.. code-block:: ruby

   resources("resource_type[resource_name]")

but the following syntax can also be used:

.. code-block:: ruby

   resources(:resource_type => "resource_name")

where in either approach ``resource_type`` is the name of a resource and ``resource_name`` is the name of a resource that can be configured by the |chef client|. 

The ``resources`` method can be used to modify a resource later on in a recipe. For example:

.. code-block:: ruby

   file "/etc/hosts" do
     content "127.0.0.1 localhost.localdomain localhost"
   end
 
and then later in the same recipe, or elsewhere:
 
.. code-block:: ruby

   f = resources("file[/etc/hosts]")
   f.mode 00644

where ``file`` is the type of resource and ``/etc/hosts`` is the name.

