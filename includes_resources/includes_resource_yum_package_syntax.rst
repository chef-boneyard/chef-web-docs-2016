.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource yum package| resource in a recipe is as follows:

.. code-block:: ruby

   yum_package "name" do
     attribute "value" # see attributes section below
     ...
     action :action
   end

where 

* ``yum_package`` tells |chef| to use the ``Chef::Provider::Deploy`` provider during the |chef| run
* ``"name"`` is the name of the package
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run
