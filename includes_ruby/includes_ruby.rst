.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|ruby| is a simple programming language that is easy to read and behaves in a predictable manner. The |chef client| uses |ruby| as its reference language, primarily for authoring cookbooks and defining recipes. It is helpful to learn the |ruby| syntax, but knowing how to program using |ruby| is not a requirement.

Each recipe is defined using patterns: resource names, attribute-value pairs, and actions. The most common infrastructure automation scenarios can be solved using patterns because the resources that are used to define them are already built into the |chef client|.

The |dsl recipe| is an extended domain-specific language (DSL) that makes additional programmatic concepts available for use within recipes, but do not require using |ruby| as a programming language. Most of the methods in the |dsl recipe| are used to find specific details about a node, and then (depending on those details) to provide additional instructions to the |chef client|.

In addition to recipes, cookbooks also use |ruby| to define attribute files, template files, custom resources, libraries, unit and integration testing files, and so on.

Finally, because both cookbooks and recipes are built using |ruby|, the full power of the |ruby| programming language is available for whenever a full programming language is needed.



