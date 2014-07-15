.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A resource is a statement of configuration policy. It describes the desired state of an element of your infrastructure, along with the steps needed to bring that item to the desired state. Each resource statement in a |chef| recipe corresponds to a specific part of your infrastructure: a file, a template, a directory, a package, a service, a command to be executed, and so on. Each resource statement includes the resource type (such as ``template``, ``service`` or ``package``), its name, any attributes that specify additional details, and an action that tells the |chef client| how to implement the configuration policy.

Together, resources describe all the components in your network. Recipes group resources together and describe working configurations. Add recipes to a run-list to describe the desired state for every node to which that run-list is assigned. Cookbooks are collections of recipes and are stored on the |chef server|. 
