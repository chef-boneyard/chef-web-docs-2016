.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource yum_package| resource in a recipe is as follows:

.. code-block:: ruby

   yum_package "name" do
     attribute "value" # see attributes section below
     ...
     action :action
   end

where

* ``yum_package`` tells the |chef client| to use the ``Chef::Provider::Package::Yum`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``package_name`` attribute is not specified as part of a recipe, ``name`` is also the name of the package
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state
