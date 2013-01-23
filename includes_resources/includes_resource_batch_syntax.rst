.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource windows_registry| resource in a recipe is as follows:

.. code-block:: ruby

   batch "name" do
     attribute "value" # see attributes section below
     ...
     action :action
   end

where 

* ``batch`` tells |chef| to use the ``Windows::Batch`` provider during the |chef| run
* ``"name"`` is the xxxxx
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource windows_batch| resource can work when used in a recipe. In this example, xxxxx:

.. code-block:: ruby

   batch "xxxxx" do
     xxxxx
     action :run
   end

