.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource container_service| resource in a recipe is as follows:

.. code-block:: ruby

   container_service "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``container_service`` tells the |chef client| to enable or disable a |docker| container
* ``name`` is the name of the resource block; when the ``service_name`` attribute is not specified as part of a recipe, ``name`` is also the name of the service
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run
