.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When a definition is used instead of a custom resource, a definition behaves like a compile-time macro that is reusable across recipes.  The key differences are that a definition is not a resource and
that the work it does happens at compile-time.  In most cases of simple code re-use a custom resource is always preferred over a definition.  The one exception to this rule is the accumulator pattern where
a single resource is built iterative across many recipes using a definition to modify the resource at compile-time.

Though a definition behaves like a resource, and at first glance seems like it could be used interchanably, some key differences exist. A definition:

* Is not a resource or a custom resource and cannot be notified or subscribed
* Is defined from within the ``/definitions`` directory of a cookbook
* Is executed at compile time, **before** any resources do their work during the |chef client| run
* Does not support |whyrun| mode
* Does not support only_if, not_if and other common properties of resources
