.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A version constraint is a string that combines the cookbook version syntax with an operator, in the following format::

   operator cookbook_version_syntax

For example, a version constraint for "greater than version 1.0.2" is expressed like this::

   > 1.0.2

An optimistic version constraint is one that looks for versions greater than or equal to the specified version. For example::

   >= 2.6.5

will match cookbooks greater than or equal to 2.6.5, such as 2.6.5, 2.6.7 or 3.1.1.

A pessimistic version constraint is one that will find the upper limit version number within the range specified by the minor version number or patch version number. For example, a pessimistic version constraint for minor version numbers::

   ~> 2.6

will match cookbooks that are greater than version 2.6, but less than version 3.0. Or, a pessimistic version constraint for patch version numbers::

   ~> 2.6.5

will match cookbooks that are greater than version 2.6.5, but less than version 2.7.0.