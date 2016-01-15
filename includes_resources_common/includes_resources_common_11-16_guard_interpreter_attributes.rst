.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``guard_interpreter`` property may be set to any of the following values:

``:bash``
   Evaluates a string command using the |resource script_bash| resource.

``:batch``
   Evaluates a string command using the |resource batch| resource.

``:csh``
   Evaluates a string command using the |resource script_csh| resource.

``:default``
   Default. Executes the default interpreter as identified by the |chef client|.

``:perl``
   Evaluates a string command using the |resource script_perl| resource.

``:powershell_script``
   Evaluates a string command using the |resource powershell_script| resource.

``:python``
   Evaluates a string command using the |resource script_python| resource.

``:ruby``
   Evaluates a string command using the |resource script_ruby| resource.
