.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the |resource ruby_block| resource to execute |ruby| code during a |chef client| run. |ruby| code in the ``ruby_block`` resource is evaluated with other resources during convergence, whereas |ruby| code outside of a ``ruby_block`` resource is evaluated before other resources, as the recipe is compiled.
