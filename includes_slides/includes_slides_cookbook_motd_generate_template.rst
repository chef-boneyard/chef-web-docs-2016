.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Run:

.. code-block:: bash

   $ chef generate template . motd -s /etc/motd

Returns:

.. code-block:: bash

   Compiling Cookbooks...
     Recipe: code_generator::template
     * directory[././templates/default] action create
       - create new directory ././templates/default
     * file[././templates/default/motd.erb] action create
       - create new file ././templates/default/motd.erb
       - update content in file ././templates/default/motd.erb 
         from none to 315f5b
