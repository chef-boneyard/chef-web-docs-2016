.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A conditional execution can be used to put additional guards around certain resources so that they are only run when the condition is met. A conditional execution can be used with any resource. The most common reason for using a conditional execution is to ensure that the ``execute`` resource produces the same result every time. A conditional execution can be passed as a string or as a block. A strings is executed as a shell command and a block is |ruby| code. In both cases, the attribute is ``true`` when the command returns ``0``.



