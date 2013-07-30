.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource route| resource in a recipe is as follows:

.. code-block:: ruby

   route "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``route`` tells the |chef client| to use the ``Chef::Provider::Route`` provider during the |chef client| run
* ``"name"`` is the IP address for the routing device
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run
