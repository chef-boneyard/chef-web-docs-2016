.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``create`` argument is used to create a new cookbook directory, including the following directories and files:

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

This argument has the following syntax::

   knife cookbook create COOKBOOK_NAME (options)

This argument has the following options:

``-c CONFIG``, ``--config CONFIG``
   |config|

``--color``
   |color|

``-c COPYRIGHT_HOLDER``, ``--copyright COPYRIGHT_HOLDER``
   |copyright|

``--defaults``
   |defaults|

``-e EDITOR``, ``--editor EDITOR``
   |editor|

``-E ENVIRONMENT``, ``--environment ENVIRONMENT``
   |environment|

``-F FORMAT``, ``--format FORMAT``
   |format|

``-h``, ``--help``
   |help|

``-i LICENSE``, ``--license LICENSE``
   |license|

``-k KEY``, ``--key KEY``
   |key|

``-m EMAIL``, ``--email EMAIL``
   |email|

``--no-color``
   |no-color|

``-n``, ``--disable-editing``
   |no-editor|

``-o PATH``, ``--cookbook-path PATH``
   |cookbook-path create|

``--print-after``
   |print-after|

``-r FORMAT``, ``--readme-format FORMAT``
   |readme-format|

``-s URL``, ``--server-url URL``
   |server-url|

``-u USER``, ``--user USER``
   |user|

``-v``, ``--version``
   |version chef|

``-V``, ``--verbose``
   |verbose|

``-y``, ``--yes``
   |yes|

The cookbook copyright, license, email, and readme format settings can be configured in a |knife rb| file or using the |knife| command prompt:

.. code-block:: bash

   cookbook_copyright "your_company_name"
   cookbook_license "none"
   cookbook_email "your_email"
   readme_format "md"

For example, to create a cookbook named "my_cookbook" with copyright, email, license, and readme format options specified, enter:

.. code-block:: bash

   $ knife cookbook create my_cookbook -c "My Name" -e "my@email.com" -l apachev2 -r md

to return something like:

.. code-block:: bash

   ** Creating cookbook my_cookbook
   ** Creating README for cookbook: my_cookbook
   ** Creating metadata for cookbook: my_cookbook
