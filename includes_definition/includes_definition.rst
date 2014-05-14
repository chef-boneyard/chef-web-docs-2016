.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A definition is used to declare resources so they can be added to the resource collection. A definition:

* Is not a resource or a lightweight resource
* Groups two (or more) resource declarations; there is no limit to the number of resources that can be part of this declaration
* Is often described as a "recipe macro"
* Is never declared into a cookbook; all definitions must be located within the ``definitions/`` directory
* Does not have an associated provider (unlike a lightweight resource)
* Supports |whyrun| mode automatically

A definition is best-used when:

* Data needs to be passed from one (or more) recipes into a single declaration
* A repeating usage pattern exists for one (or more) resources
* A simple, direct approach is desired
