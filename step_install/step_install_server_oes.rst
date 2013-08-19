To install |chef server 11|, do the following:

#. Go to http://www.opscode.com/enterprise-chef/.

#. Click the **Get Chef** button and sign up for |chef server oes|.

#. Complete the form.

#. `Set up a workstation <http://docs.opscode.com/chef/install_workstation.html>`_.

#. From the workstation, verify the install by running the following commands to ensure that every |chef client| and user was registered correctly.

   .. code-block:: bash

      $ knife client list

   and:

   .. code-block:: bash

      $ knife user list

