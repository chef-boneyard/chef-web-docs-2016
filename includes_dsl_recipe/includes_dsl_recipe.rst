.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |dsl recipe| is a |ruby| DSL that is primarily used to declare resources from within a recipe. The |dsl recipe| also helps ensure that recipes interact with nodes (and node properties) in the desired manner. Most of the methods in the |dsl recipe| are used to find a specific parameter and then tell the |chef client| what action(s) to take, based on whether that parameter is present on a node.
