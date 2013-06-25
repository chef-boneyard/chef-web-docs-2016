.. This is an included how-to. 


To find the dependencies for a combination of nodes, cookbooks, roles, and/or environments:

.. code-block:: bash

   $ knife deps cookbooks/git.json cookbooks/github.json roles/base.json environments/desert.json nodes/mynode.json
