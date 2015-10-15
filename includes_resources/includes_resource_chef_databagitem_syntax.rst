.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource chef_data_bag_item| resource in a recipe is as follows:

.. code-block:: ruby

   chef_data_bag_item 'name' do
     attribute 'value' # see properties section below
     ...
     action :action # see actions section below
   end

where 

* ``chef_data_bag_item`` tells the |chef client| to use the ``Chef::Provider::ChefDataBagItem`` provider during the |chef client| run
* ``name`` is the name of the resource block and also the name of the data bag item
* ``attribute`` is zero (or more) of the properties that are available for this resource
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state
