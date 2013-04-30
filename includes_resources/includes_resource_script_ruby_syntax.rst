.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource script_ruby| resource in a recipe is as follows:

.. code-block:: ruby

   ruby "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``ruby`` tells |chef| to use the ``Chef::Resource::Script::Ruby`` provider during the |chef| run
* ``"name"`` is the name of the script that will be run
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

