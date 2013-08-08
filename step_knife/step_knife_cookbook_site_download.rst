.. This is an included how-to. 


To download a cookbook when |git| is not used for version source control, run the following command:

.. code-block:: bash

   $ knife cookbook site download COOKBOOK_NAME

where ``COOKBOOK_NAME`` is the name of a cookbook on |url opscode_cookbooks|. This will download the |tar gz| file associated with the cookbook and will create a file named ``COOKBOOK_NAME.tar.gz`` in the current directory (e.g., ``~/chef-repo``). Once downloaded, using a version source control system is recommended.