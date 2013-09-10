.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource script_python| resource in a recipe is as follows:

.. code-block:: ruby

   python "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``python`` tells the |chef client| to use the ``Chef::Resource::Script::Python`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``command`` attribute is not specified as part of a recipe, ``name`` is also the name of the command to be executed
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

