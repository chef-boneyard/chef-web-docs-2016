.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An environment can be created in five different ways:

* Creating a |ruby| file in the environments sub-directory of the |chef| repository and then pushing it to the |chef server|.
* Creating a |json| file directly in the |chef| repository (**jamescott: where?**) and then pushing it to the |chef server| (**jamescott: HOW?**).
* Using |knife|.
* Using the Management Console (in |chef hosted|, |chef private|, or |chef open server|).
* Using the |chef server| REST API.

Once an environment exists on the |chef server|, a node can be associated with that environment using the ``chef_environment`` method. (**jamescott: method?**)

