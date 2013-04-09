.. This is an included how-to. 


To download a cookbook when |git| is used for version source control, run the following command:

.. code-block:: bash

   $ knife cookbook site install COOKBOOK_NAME

where ``COOKBOOK_NAME`` is the name of a cookbook on |url cookbook|. This will start a process that:

   * downloads the cookbook from |url cookbook| as a |tar gz| archive
   * ensures that its using the |git| master branch, and then checks out the cookbook from a vendor branch (creating a new vendor branch, if required)
   * removes the old (existing) version
   * expands the |tar gz| archive and adds the expanded files to the |git| index and commits
   * creates a tag for the version that was downloaded
   * checks out the master branch
   * merges the cookbook into the master (to ensure that any local changes or modifications are preserved)