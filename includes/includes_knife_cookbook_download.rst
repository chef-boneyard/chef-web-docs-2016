.. This is an included file that describes a sub-command or argument in Knife.


The ``download`` argument is used to download a cookbook from the |chef server|. 

This argument has the following syntax::

   knife cookbook download COOKBOOK_NAME [COOKBOOK_VERSION] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-d DOWNLOAD_DIRECTORY``, ``--dir DOWNLOAD_DIRECTORY``
     - |dir|
   * - ``-f``, ``--force``
     - |force directory|
   * - ``-n``, ``--latest``
     - |latest|
     
For example, to download a cookbook named "smartmon", enter:

.. code-block:: bash

   $ knife cookbook download smartmon
