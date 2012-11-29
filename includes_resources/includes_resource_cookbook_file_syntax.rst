.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for the ``cookbook_file`` resource is as follows:

.. code-block:: ruby

   cookbook_file "name" do
     attribute "value"
     ...
     action :action
   end

where 

* ``cookbook_file`` tells |chef| to use the ``CookbookFile`` provider during the |chef| run
* ``"name"`` is the destination path and file name on the node, and ``attribute`` is zero (or more) the available attributes
* ``:action`` is the step that the resource will ask the provider to take during the |chef| run
* Note that the ``path`` attribute defaults to name (unless specified) and that the ``cookbook`` attribute defaults to the current cookbook; often, neither of these attributes need to be specified

For example, the following will create a cookbook file in a location named "/tmp/cookbook_test_file", but only if the cookbook is not already there. The file is located in "/tmp/test" in the current cookbook. Backups will not be kept.

.. code-block:: ruby

   cookbook_file "/tmp/cookbook_test_file" do
     backup false
     path "/tmp/test"
     action :create_if_missing
   end
