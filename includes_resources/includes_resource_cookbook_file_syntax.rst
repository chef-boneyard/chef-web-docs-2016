.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource cookbook file| resource in a recipe is as follows:

.. code-block:: ruby

   cookbook_file "name" do
     some_attribute "value" # see attributes section below
     ...
     action :action # see actions section below
   end

where 

* ``cookbook_file`` tells |chef| to use the ``CookbookFile`` provider during the |chef| run
* ``"name"`` is the destination path and file name on the node
* ``attribute`` is zero (or more) of the attributes that are available for this resource
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run

The following is an example of how the |resource cookbook file| resource can work when used in a recipe. In this example, a cookbook file named "/tmp/cookbook_test_file" will be created, but only if the cookbook is not already there. The file that will be used to create the cookbook file is located in "/tmp/test" in the current cookbook, which is different than the destination path and filename on the node where the file will be created. Backups will not be kept.

.. code-block:: ruby

   cookbook_file "/tmp/cookbook_test_file" do
     backup false
     path "/tmp/test"
     action :create_if_missing
   end
