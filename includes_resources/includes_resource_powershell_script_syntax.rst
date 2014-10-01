.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource powershell_script| resource in a recipe is as follows:

.. code-block:: ruby

   powershell_script "name" do
     attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``powershell_script`` tells the |chef client| to use the ``Chef::Provider::PowershellScript`` provider during the |chef client| run
* ``name`` is the name of the resource block; when the ``command`` attribute is not specified as part of a recipe, ``name`` is also the command to be executed
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state

For example:

.. code-block:: ruby

   powershell_script "name_of_script" do
     cwd Chef::Config[:file_cache_path]
     code <<-EOH
        # some script goes here
     EOH
   end
