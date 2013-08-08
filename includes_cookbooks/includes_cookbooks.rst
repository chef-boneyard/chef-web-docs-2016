.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A cookbook is the fundamental unit of configuration and policy distribution. Each cookbook defines a scenario, such as everything needed to install and configure |mysql|, and then it contains all of the components that are required to support that scenario, including:

* Attribute values that are set on nodes
* Definitions that allow the creation of reusable collections of resources
* File distributions
* Libraries that extend the |chef client| and/or provide helpers to |ruby| code
* Recipes that specify which resources to manage and the order in which those resources will be applied
* Custom resources and providers
* Templates
* Metadata about recipes (including dependencies), version constraints, supported platforms, and so on

