.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``chefignore`` file is used to tell |knife| which cookbook files in the |chef| repository should be ignored when uploading data to the |chef server|. The type of data that should not be uploaded to the |chef server| includes swap files, version control data, build output data, and so on. The ``chefignore`` file uses the ``File.fnmatch`` |ruby| syntax to define the ignore patterns---``*``, ``**``, and ``?`` wildcards.

* A pattern is relative to the cookbook root
* A pattern may contain relative directory names
* A pattern may match all files in a directory

The ``chefignore`` file is located at the root of the `/cookbooks`` subdirectory in the |chef| repository. It should contain sections similar to the following:

.. code-block:: basemake

   # section
   *ignore_pattern
   
   # section
   **ignore_pattern
   
   # section
   ?ignore_pattern
