.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource requires that |amazon aws| credentials be passed using the ``aws_access_key`` and ``aws_secret_access_key`` attributes. It is recommended that these be stored as a data bag item. For example:

.. code-block:: ruby

      {
         "id": "main",
         "aws_access_key_id": "YOUR AWS ACCESS KEY",
         "aws_secret_access_key": "YOUR AWS SECRET ACCESS KEY"
      }

These values can be loaded in a recipe by using something like the following:

.. code-block:: bash

   aws = data_bag_item("aws", "main")

and then the elements of the data bag item can be accessed as hash keys in the |amazon aws| hash. For example:

.. code-block:: bash

   aws['aws_access_key_id']
   aws['aws_secret_access_key']
