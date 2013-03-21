.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A recipe can run multiple times on the same system and the results will always be identical. In |chef|, a resource is defined in a recipe, which then defines the actions to be performed on the system. |chef| ensures that actions are not performed if the resources have not changed and that any action that is performed is done the same way each time. If a recipe is re-run and nothing has change, then |chef| will not do anything.
