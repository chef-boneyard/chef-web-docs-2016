.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Run:

.. code-block:: bash

   $ sudo chef-apply -e "package 'vim'"

Returns:

.. code-block:: bash

   Recipe: (chef-apply cookbook)::(chef-apply recipe)
     * package[vim] action install
       - install version 7.2.411-1.8.el6 of package vim-enhanced
