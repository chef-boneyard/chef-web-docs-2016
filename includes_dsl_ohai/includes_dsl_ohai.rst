.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |dsl ohai| is a |ruby| DSL that is used to define an |ohai| plugin and to ensure that |ohai| collects the right data at the start of every |chef client| run. The |dsl ohai| is a small DSL with a single method that is specific to |ohai| plugins. Because the |dsl ohai| is a |ruby| DSL, anything that can be done using |ruby| can also be done when defining an |ohai| plugin.
