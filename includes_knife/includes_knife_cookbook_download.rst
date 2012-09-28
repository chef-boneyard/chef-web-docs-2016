.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``download`` argument is used to download a cookbook from the |chef server|. 

This argument has the following syntax::

   knife cookbook download COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

``-d DOWNLOAD_DIRECTORY``, ``--dir DOWNLOAD_DIRECTORY``
   |dir|

``-f``, ``--force``
   |force directory|

``-n``, ``--latest``
   |latest|
     
For example, to download a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook download smartmon
