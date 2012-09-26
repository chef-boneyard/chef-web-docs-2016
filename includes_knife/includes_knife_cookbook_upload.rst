.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``upload`` argument is used to upload one or more cookbooks (and any files that are associated with those cookbooks) from a local repository to the |chef server|. Only files that do not already exist on the |chef server| will be uploaded.

.. note:: Use a |chefignore| file to prevent the upload of specific files and file types, such as temporary files or files placed in folders by version control systems. The |chefignore| file must be located in the root of the cookbook repository and must use rules similar to filename globbing (as defined by the |ruby| File.fnmatch syntax).

This argument has the following syntax::

   knife cookbook upload [COOKBOOK_NAME...] (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-a``, ``--all``
     - |all cookbooks|
   * - ``-d``, ``--include-dependencies``
     - |include-dependencies|
   * - ``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
     - |environment cookbooks|
   * - ``--force``
     - |force update|
   * - ``--freeze``
     - |freeze|
   * - ``-o PATH:PATH``, ``--cookbook-path PATH:PATH``
     - |cookbook-path|

For example:

.. code-block:: bash

   $ knife cookbook upload getting-started

To upload a cookbook, and then prevent other users from being able to make changes to it, enter:

.. code-block:: bash

   $ knife cookbook upload redis --freeze

To return::

.. code-block:: bash

   Uploading redis...
   Upload completed

If a cookbook is frozen and the ``--force`` option is not specified, |knife| will return an error message similar to the following:

.. code-block:: bash

   Uploading redis...
   ERROR: Version 0.1.6 of cookbook redis is frozen. Use --force to override.


