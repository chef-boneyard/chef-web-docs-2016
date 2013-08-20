.. This is an included how-to. 


The |chef repo hidden| directory is used to store three files:

* |knife rb|
* |organization pem|
* |user pem|

Where ``ORGANIZATION`` and ``USER`` represent strings that are unique to each organization. These files must be present in the |chef repo hidden| directory in order for a workstation to be able to connect to a |chef server|.

To create the |chef repo hidden| directory:

#. In a command window, enter the following:

   .. code-block:: bash

      sudo mkdir -p ~/chef-repo/.chef

   .. note:: ``sudo`` is not always required, but it often is.

#. After the |chef repo hidden| directory has been created, the following folder structure will be present on the local machine::

      chef-repo/
         .chef/        << the hidden directory
         certificates/
         config/
         cookbooks/
         data_bags
         environments/
         roles/

#. Add ``.chef`` to the ``.gitignore`` file to prevent uploading the contents of the ``.chef`` folder to |github|. For example, in a |centos| environment, enter the following:

.. code-block:: bash

   $ cat .gitignore .chef