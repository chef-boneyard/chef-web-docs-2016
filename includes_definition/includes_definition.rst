.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A definition is code that is reused across recipes, similar to a compile-time macro. A definition is created using arbitrary code wrapped around built-in |chef client| resources---|resource file|, |resource execute|, |resource template|, and so on---by declaring those resources into the definition as if they were declared in a recipe. A definition is then used in one (or more) recipes as if it were a resource.

Though a definition behaves like a resource, some key differences exist. A definition:

* Is not a resource or a lightweight resource
* Is defined from within the ``/definitions`` directory of a cookbook
* Is loaded before resources during the |chef client| run; this ensures the definition is available to all of the resources that may need it
* May not notify resources in the resource collection because a definition is loaded **before** the resource collection itself is created; however, a resource in a definition **may** notify a resource that exists within the same definition
* Automatically supports |whyrun| mode, unlike lightweight resources

Use a defintion when repeating patterns exist across resources and/or when a simple, direct approach is desired. There is no limit to the number of resources that may be included in a definition: use as many built-in |chef client| resources as necessary.
