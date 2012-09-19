.. This is an included how-to. 

If there isn't much concern about people being able to view the key, add the private key to ``cookbook/COOKBOOK_NAME/files/default/id_deploy`` and use a ``cookbook_file`` block somewhere in the recipe to add it to the |ssh| file locally on the node.

To add a private key to a node:

.. code-block:: ruby

   cookbook_file "/tmp/private_code/.ssh/id_deploy" do
     source "id_deploy"
     owner "ubuntu"
     mode 0600
   end

After this has been added to a recipe, it should be able to deploy the private repository.

