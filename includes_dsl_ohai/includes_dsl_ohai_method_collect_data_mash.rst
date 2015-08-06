.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use a mash to store data. This is done by creating a new mash, and then setting an attribute to it. For example:

.. code-block:: ruby

   provides 'name_of_mash'
   name_of_mash Mash.new
   name_of_mash[:attribute] = 'value'
