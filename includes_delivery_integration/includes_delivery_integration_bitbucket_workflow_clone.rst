.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the following steps to create a local clone of the project repository:

#. Create a local clone of the project repository:

   .. code-block:: bash

      $ delivery clone $PROJECT

If the project is cloned from |bitbucket| (or if a pre-existing clone is used), be sure to add a remote. The clone URL for the |chef delivery| project can be found on the project's page in the |chef delivery| webui:

#. To create the remote run the following:

   .. code-block:: bash

      $ git remote add delivery $DELIVERY_CLONE_URL
