.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The syntax for using the |resource breakpoint| resource in a recipe is as follows:

.. code-block:: ruby

   breakpoint "name" do
     action :break
   end

where 

* ``:break`` will tell |chef| to stop running a recipe at this point when |chef| is being run in |chef shell| mode

