.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource remote_directory| resource in a recipe is as follows:

.. code-block:: ruby

   remote_directory "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``remote_directory`` tells the |chef client| to use the ``Chef::Provider::Directory::RemoteDirectory`` provider during the |chef client| run
* ``name`` is the path to the location below which the |chef client| will manage directories
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run
