.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``data_bags/`` directory is used to store all of the data bags that exist for an organization. Each sub-directory corresponds to a single data bag on the |chef server| and contains a |json| file for each data bag item. If a sub-directory does not exist, then create it using |ssl| commands. After a data bag item is created, it can then be uploaded to the |chef server|. 

