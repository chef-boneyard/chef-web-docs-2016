.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A definition behaves like a compile-time macro that is reusable across recipes. A definition is typically created by wrapping arbitrary code around resources that are declared as if they were in a recipe. A definition is then used in one (or more) actual recipes as if the definition were a resource.

Though a definition looks like a resource, and at first glance seems like it could be used interchangeably, some important differences exist. A definition:

* Is not a resource or a custom resource
* Is processed while the resource collection is compiled (whereas resources are processed while a node is converged)
* Does not support common resource properties, such as ``notifies``, ``subscribes``, ``only_if``, and ``not_if``
* Is defined from within the ``/definitions`` directory of a cookbook
* Does not support |whyrun| mode
