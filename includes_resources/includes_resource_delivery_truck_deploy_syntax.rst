.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the ``delivery_truck_deploy`` resource in a recipe is as follows:

.. code-block:: ruby

   delivery_truck_deploy "name" do
     attribute "value" # see properties section below
     ...
     action :action # see actions section below
   end
