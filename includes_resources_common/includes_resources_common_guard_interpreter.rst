.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Any resource that passes a string command may also specify the interpreter that will be used to evaluate that string command. This is done by using the ``guard_interpreter`` attribute to specify a |resource script|-based resource: |resource script_bash|, |resource script_csh|, |resource script_perl|, |resource powershell_script|, |resource script_python|, and |resource script_ruby|, plus the |resource batch| resource.