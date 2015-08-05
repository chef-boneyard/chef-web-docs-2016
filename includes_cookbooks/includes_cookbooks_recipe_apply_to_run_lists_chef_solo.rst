.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use a |json| file to pass run-list details to |chef solo| as long as the cookbook in which the recipe is located is available to the system on which |chef solo| is running. For example, a file named ``dna.json`` contains the following details:

.. code-block:: javascript

   {
     "run_list": ["recipe[apache2]"]
   }

To add the run-list to the node, enter the following:

.. code-block:: bash

   $ sudo chef-solo -j /etc/chef/dna.json
