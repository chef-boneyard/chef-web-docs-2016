.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When the |chef| repository is cloned from |github|, the following occurs:

* A directory named ``data_bags`` is created.
* For each data bag, a sub-directory is created that has the same name as the data bag.
* For each data bag item, a |json| file is created and placed in the appropriate sub-directory.

The ``data_bags`` directory can be placed under version source control.

**jamescott: the following seems *really* out of place.**

When deploying from a private repository using a data bag, use the ``deploy_key`` option to ensure the private key is present:

.. code-block:: ruby

   {
     "id": "my_app",
     ... (truncated) ...
     "deploy_key": "ssh_private_key"
   }

where ``ssh_private_key`` is the same |ssh| private key as used with a private |git| repository and the new lines converted to ``\n``.