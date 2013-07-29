.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource mount| resource in a recipe is as follows:

.. code-block:: ruby

   mount "name" do
     some_attribute "value" # see attributes section below
     ...
     fstype "type"
     action :action # see actions section below
   end

where 

* ``mount`` tells the |chef client| to use the ``Chef::Provider::Mount`` provider during the |chef client| run for all platforms except for |windows|, which uses the ``Chef::Provider::Mount::Windows`` provider 
* ``"name"`` is the target location in the file system
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``fstype`` is the file system type; this attribute is required
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

The following is an example of how the |resource mount| resource can work when used in a recipe:

.. code-block:: ruby

   mount node['mysql']['ec2_path'] do
     device ebs_vol_dev
     fstype "xfs"
     action :mount
   end
