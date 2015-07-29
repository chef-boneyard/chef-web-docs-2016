.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For a machine on which |selinux| is enabled, the |chef client| will create files that correctly match the default policy settings only when the cookbook that defines the action also conforms to the same policy.
