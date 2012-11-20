.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |dsl recipe| is a |ruby| DSL that is used to ensure that recipes interact with nodes (and node properties) in the desired manner. Most of the methods in the |dsl recipe| are used to find a specific parameter and then tell |chef| what action(s) to take, based on whether that parameter is present on a node.

The |dsl recipe| provides support for using attributes, data bags (and encrypted data), and search results in a recipe, as well as four helper methods that are available only within recipes. These helper methods can be used to check for a node's platform from the recipe to ensure that specific actions are taken for specific platforms. The helper methods are:

* platform?
* platform_family?
* value_for_platform
* value_for_platform_family

