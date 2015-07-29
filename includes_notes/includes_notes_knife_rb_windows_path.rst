.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When running |windows|, the |knife rb| file is located at ``%HOMEDRIVE%:%HOMEPATH%\.chef`` (e.g. ``c:\Users\<username>\.chef``). If this path needs to be scripted, use ``%USERPROFILE%\.chef``.
