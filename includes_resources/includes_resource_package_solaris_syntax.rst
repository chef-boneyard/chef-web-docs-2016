.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource package_solaris| resource in a recipe is as follows:

.. code-block:: ruby

   solaris_package "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``solaris_package`` tells the |chef client| to use the ``Chef::Provider::Solaris`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``package_name`` attribute is not specified as part of a recipe, ``name`` is also the name of the package
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run
