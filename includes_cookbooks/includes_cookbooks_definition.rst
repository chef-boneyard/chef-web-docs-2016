.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A definition is used to create a resource by stringing together one (or more) existing resources. A definition is not a resource and it does not take any actions by itself. A definition is replaced by one (or more) resources, and it then takes actions on behalf of those resources. There is no limit to the number of resources that can be part of a definition. All definitions within a cookbook must be located in the ``definitions/`` folder. A definition is never declared into a cookbook. A definition is best-used when:

* Data needs to be passed from one (or more) recipes into a single definition
* A repeating usage pattern exists for one (or more) resources
* An action does not need to be sent directly to a resource (when it does, it should be sent to a provider)