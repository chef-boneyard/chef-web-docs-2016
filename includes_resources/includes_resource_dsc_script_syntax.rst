.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource dsc_script| resource in a recipe is as follows:

.. code-block:: ruby

   dsc_script "name" do
     ...
   end

where 

* ``dsc_script`` tells the |chef client| that a |windows powershell_dsc_short| resource is based on a |windows powershell| script

.. need to add the syntax for the script itself
