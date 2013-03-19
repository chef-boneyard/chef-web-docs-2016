.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A definition is used to declare resources so they can be added to the resource collection. A definition is not a resource or a lightweight resource. A definition does not have an associated provider. A definition groups two (or more) resource declarations. There is no limit to the number of resources that can be part of a definition. All definitions within a cookbook must be located in the ``definitions/`` folder. A definition is never declared into a cookbook. A definition is best-used when:

* Data needs to be passed from one (or more) recipes into a single definition
* A repeating usage pattern exists for one (or more) resources
* An action does not need to be sent directly to a resource (when it does, it should be sent to a provider)