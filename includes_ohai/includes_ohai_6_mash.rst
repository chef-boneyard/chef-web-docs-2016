.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Most of the information we want to lookup would be nested in some way, and |ohai| tends to do this by storing the data in a mash. This can be done by creating a new mash and setting the attribute to it.

In plugins/canhas.rb:

.. code-block:: ruby

   provides "canhas"
   canhas Mash.new
   canhas[:burger] = "want"

