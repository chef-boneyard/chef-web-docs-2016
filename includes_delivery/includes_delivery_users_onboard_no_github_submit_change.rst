.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The change submission process is the familiar |git| process: 

#. Clone the default |git| repo that came with |chef delivery|.
#. Create a branch.
#. Make changes and test the changes.
#. Create a |git| commit for the changes.
#. Enter this command in the root of the project directory:

   .. code-block:: bash

      $ delivery review 

This kicks off the |chef delivery| pipeline process.
