.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When a definition is used instead of a custom resource, a definition behaves like a compile-time macro that is reusable across recipes. A definition typically created using arbitrary code that wrapped around built-in |chef client| resources---|resource file|, |resource execute|, |resource template|, and so on---by declaring those resources into the definition as if they were declared in a recipe. A definition is then used in one (or more) recipes as if it were a resource.

Though a definition looks like a resource, and at first glance seems like it could be used interchanably, some key differences exist. A definition:

* Is not a resource or a custom resource
* Is defined from within the ``/definitions`` directory of a cookbook
* Is loaded **before** resources during the |chef client| run, which prevents a definition from notifying a resource or a custom resource
* Does not support |whyrun| mode
