.. This is an included file that describes a sub-command or argument in Knife.


The ``create`` argument is used to create a new cookbook directory, including the following directories and files:

  * cookbook/attributes
  * cookbook/definitions
  * cookbook/files/default
  * cookbook/libraries
  * cookbook/metadata.rb
  * cookbook/providers
  * cookbook/readme.md
  * cookbook/recipes/default.rb
  * cookbook/resources
  * cookbook/templates/default

This argument has the following syntax::

   knife cookbook create COOKBOOK_NAME (options)

This argument has the following options:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Option
     - Description
   * - ``-c COPYRIGHT_HOLDER``, ``--copyright COPYRIGHT_HOLDER``
     - |copyright|
   * - ``-e EMAIL``, ``--email EMAIL``
     - |email|
   * - ``-i LICENSE``, ``--license LICENSE``
     - |license|
   * - ``-o PATH``, ``--cookbook-path PATH``
     - |cookbook-path create|
   * - ``-r FORMAT``, ``--readme-format FORMAT``
     - |readme-format|

The cookbook copyright, license, email, and readme format settings can be configured in a |knife rb| file or using the |knife| command prompt:

.. code-block:: bash

   cookbook_copyright "your_company_name"
   cookbook_license "none"
   cookbook_email "your_email"
   readme_format "md"

For example, to create a cookbook named "my_cookbook" with copyright, email, license, and readme format options specified, enter:

.. code-block:: bash

   $ knife cookbook create my_cookbook -c "My Name" -e "my@email.com" -l apachev2 -r md
