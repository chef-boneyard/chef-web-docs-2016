.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to create a new cookbook directory on the local machine, including the following directories and files:

  * cookbook/attributes
  * cookbook/definitions
  * cookbook/files/default
  * cookbook/libraries
  * cookbook/metadata.rb
  * cookbook/providers
  * cookbook/readme.md (or .rdoc)
  * cookbook/recipes/default.rb
  * cookbook/resources
  * cookbook/templates/default

After the cookbook is created, it can be uploaded to the |chef server| using the ``knife upload`` argument.

This argument has the following syntax::

   knife cookbook create COOKBOOK_NAME (options)

This argument has the following options:

``-c COPYRIGHT_HOLDER``, ``--copyright COPYRIGHT_HOLDER``
   |copyright|

``-i LICENSE``, ``--license LICENSE``
   |license|

``-m EMAIL``, ``--email EMAIL``
   |email|

``-o PATH``, ``--cookbook-path PATH``
   |cookbook-path create|

``-r FORMAT``, ``--readme-format FORMAT``
   |readme-format|

The cookbook copyright, license, email, and readme format settings can be configured in a |knife rb| file or using the |knife| command prompt:

.. code-block:: bash

   cookbook_copyright "your_company_name"
   cookbook_license "none"
   cookbook_email "your_email"
   readme_format "md"

**Examples**

For example, to create a cookbook named "my_cookbook" with copyright, email, license, and readme format options specified, enter:

.. code-block:: bash

   $ knife cookbook create my_cookbook -c "My Name" -e "my@email.com" -l apachev2 -r md

to return something like:

.. code-block:: bash

   ** Creating cookbook my_cookbook
   ** Creating README for cookbook: my_cookbook
   ** Creating metadata for cookbook: my_cookbook
