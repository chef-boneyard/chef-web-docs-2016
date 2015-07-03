.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |resource breakpoint| resource block creates a breakpoint in a recipe:

.. code-block:: ruby

   breakpoint "name" do
     action :break
   end

where 

* ``:break`` will tell the |chef client| to stop running a recipe; can only be used when the |chef client| is being run in |chef shell| mode
