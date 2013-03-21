.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A banner displays the syntax for the plugin to users when they enter the ``--help`` option. Use the ``banner`` method in the class body similar to the following:

.. code-block:: ruby

   module example
     class example < Chef::Knife

     banner "knife example"
   
     ...
   end

and the when a user enters ``knife --help``, the following will be displayed:

.. code-block:: bash

   **EXAMPLE COMMANDS**
   knife example
