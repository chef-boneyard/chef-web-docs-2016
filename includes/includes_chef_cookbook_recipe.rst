.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A recipe is the most fundamental configuration element within the |chef| environment. A recipe:

* Is authored using |ruby|, which is a programming language designed to read and behave exactly as expected. (|ruby| is a fairly simple programming language that does not require any previous programming experience.)
* Is mostly a collection of resources in a |ruby| syntax with some helper code around it
* Must define everything that is required to configure part of a system
* Must be stored in a cookbook
* May be included in a recipe
* May use the results of a search query and read the contents of a data bag (including an encrypted data bag)
* May have a dependency on one (or more) recipes
* May be tagged to facilitate the creation of arbitrary groupings that exist outside of the normal naming conventions an organization may have
* Must be added to a run-list before it can be used by |chef|
* Is always executed in the same order as listed in a run-list
