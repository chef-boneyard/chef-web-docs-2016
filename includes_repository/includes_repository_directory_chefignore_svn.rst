.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


If |svn| is being used as the version source control, it is important not to upload all of the files that |svn| uses to maintain the version history of each file to the |chef server| simply because |chef| will never use it while configuring nodes and the amount of data in an upload that includes the version history could be significant.

To prevent the upload of |svn| data, add the following to the ``chefignore`` file:

.. code-block:: basemake

   */.svn/*

To verify that the |svn| data is not being uploaded to the |chef server|, use |knife| and run a command similar to:

.. code-block:: bash

   $ knife cookbook show name_of_cookbook cookbook_version | grep .svn

