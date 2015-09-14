.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.
.. This file is hooked into a slide deck


Each custom resource must have at least one action that is defined within an ``action`` block:

.. code-block:: ruby

   action :create do
     # the steps that define the action
   end

where ``:create`` is a value that may be assigned to the ``action`` property for when this resource is used in a recipe.

For example, the ``action`` appears as a property when this custom resource is used in a recipe:

.. code-block:: ruby

   custom_resource 'name' do
     # some properties
     action :create
   end
