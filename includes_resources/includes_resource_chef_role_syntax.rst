.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource chef_role| resource in a recipe is as follows:

.. code-block:: ruby

   chef_role "name" do
     attribute "value" # see properties section below
     ...
     action :action # see actions section below
   end

where 

* ``chef_role`` tells the |chef client| to use the ``Chef::Provider::ChefRole`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``name`` property is not specified as part of a recipe, ``name`` is also the name of the role
* ``attribute`` is zero (or more) of the properties that are available for this resource
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state
