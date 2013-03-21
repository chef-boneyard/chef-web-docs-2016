.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource package| resource in a recipe is as follows:

.. code-block:: ruby

   package "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``package`` tells |chef| to use one of sixteen different providers during the |chef| run, where the provider that is used by |chef| depends on the platform of the machine on which the |chef| run is taking place
* ``"name"`` is the name of the package
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run
