.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the following steps to set up a development repository for |chef|:

#. Setup a |github| account.
#. Fork the https://github.com/opscode/chef repository to your |github| account.
#. Clone the https://github.com/opscode/chef repository:

   .. code-block:: bash
      
      $ git clone git@github.com:yourgithubusername/chef.git

#. From the command line, browse to the ``chef/`` directory:

   .. code-block:: bash
      
      $ cd chef/

#. From the ``chef/`` directory, add a remote named ``opscode``:

   .. code-block:: bash

      $ git remote add opscode git://github.com/opscode/chef.git

#. Verify:

   .. code-block:: bash
      
      $ git config --get-regexp "^remote\.opscode"

   which should return something like:

   .. code-block:: bash

      remote.opscode.url git://github.com/opscode/chef.git
      remote.opscode.fetch +refs/heads/*:refs/remotes/opscode/*

#. Adjust your branch to track the ``opscode master`` remote branch:

   .. code-block:: bash

      $ git config --get-regexp "^branch\.master"

   which should return something like:

   .. code-block:: bash

      branch.master.remote origin
      branch.master.merge refs/heads/master

   and then change it:

   .. code-block:: bash

      $ git config branch.master.remote opscode

