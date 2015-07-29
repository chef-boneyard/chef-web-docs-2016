.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Be careful when using the ``:delete_key`` action with the ``recursive`` attribute. This will delete the registry key, all of its subkeys and all of the values associated with them. This cannot be undone by the |chef client|.
