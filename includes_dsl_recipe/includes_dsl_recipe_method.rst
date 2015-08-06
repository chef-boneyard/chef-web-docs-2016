.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |dsl recipe| provides support for using attributes, data bags (and encrypted data), and search results in a recipe, as well as four helper methods that can be used to check for a node's platform from the recipe to ensure that specific actions are taken for specific platforms. The helper methods are:

* ``platform?``
* ``platform_family?``
* ``value_for_platform``
* ``value_for_platform_family``
