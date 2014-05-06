.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource machine_execute| resource in a recipe is as follows:

.. code-block:: ruby

   machine_execute "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``machine_execute`` tells the |chef client| to use the ``Chef::Provider::MachineExecute`` provider during the |chef client| run
* ``name`` is the name of the resource block and also the name of the xxxxx
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run
