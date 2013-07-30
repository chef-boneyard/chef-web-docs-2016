.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource powershell_script| resource in a recipe is as follows:

.. code-block:: ruby

   powershell_script "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``powershell_script`` tells the |chef client| to use the ``Chef::Provider::PowershellScript`` provider during the |chef client| run
* ``"name"`` is the name of the script
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef client| run

The following is an example of how the |resource powershell_script| resource can work when used in a recipe:

.. code-block:: ruby

   powershell_script "name_of_script" do
     cwd Chef::Config[:file_cache_path]
     code <<-EOH
        # some script goes here
     EOH
   end
