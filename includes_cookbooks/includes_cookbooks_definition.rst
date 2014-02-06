.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A definition is used to declare resources so they can be added to the resource collection.

* A definition is not a resource or a lightweight resource
* A definition groups two (or more) resource declarations; there is no limit to the number of resources that can be part of this declaration
* A definition is often described as a "recipe macro"
* A definition is never declared into a cookbook; all definitions must be located within the ``definitions/`` directory
* Unlike resources, a definition does not have an associated provider 

A definition is best-used when:

* Data needs to be passed from one (or more) recipes into a single definition
* A repeating usage pattern exists for one (or more) resources
* An action does not need to be sent directly to a resource