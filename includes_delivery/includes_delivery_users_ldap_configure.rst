.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


To configure LDAP for |chef delivery|:

#. From your ``delivery-cluster`` repo on your provisioning node, modify the ``environments/.json`` file as follows with the LDAP attributes you want |chef delivery| to use. If you do not specify an LDAP port, the default port of ``3269`` is used. 

   .. code-block:: javascript

      "delivery": {
        "ldap": {
            "OPTION1": "VALUE1",
            "OPTION2": "VALUE2"
        }
      }

#. Run the following command (in the example, the environment name is "test"):

   .. code-block:: bash

      $ CHEF_ENV=test rake setup:delivery

Once |chef delivery| is set up, you will have a usable **LDAP** option in the |chef delivery| **Users** page that allows you to find users through your LDAP database.
