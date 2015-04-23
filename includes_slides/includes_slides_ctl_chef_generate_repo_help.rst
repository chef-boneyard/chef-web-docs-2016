.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Run:

.. code-block:: bash

   $ chef generate repo --help

Returns:

.. code-block:: bash

   Usage: chef generate repo NAME [options]
   
     -C, --copyright COPYRIGHT        Name of the copyright holder
     -m, --email EMAIL                Email address of the author
     -I, --license LICENSE            all_rights, apache2, mit, gplv2, gplv3
     -p, --policy-only                Create a repository for policy only, 
                                        not cookbooks
     -g GENERATOR_COOKBOOK_PATH,      Use GENERATOR_COOKBOOK_PATH for the 
                                        code_generator cookbook
        --generator-cookbook
