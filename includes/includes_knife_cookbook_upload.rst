.. This is an included file that describes a sub-command or argument in Knife.


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


