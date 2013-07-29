.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource group| resource in a recipe is as follows:

.. code-block:: ruby

   group "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``group`` tells the |chef client| to use one of the following providers during the |chef client| run: ``Chef::Provider::Group``, ``Chef::Provider::Group::Aix``, ``Chef::Provider::Group::Dscl``, ``Chef::Provider::Group::Gpasswd``, ``Chef::Provider::Group::Groupadd``, ``Chef::Provider::Group::Groupmod``, ``Chef::Provider::Group::Pw``, ``Chef::Provider::Group::Suse``, ``Chef::Provider::Group::Usermod``, or ``Chef::Provider::Group::Windows``. The provider that is used by the |chef client| depends on the platform of the machine on which the |chef client| run is taking place
* ``"name"`` is the security group
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run
