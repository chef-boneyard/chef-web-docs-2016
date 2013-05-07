.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A LWRP is a part of a cookbook that is used to extend |chef| in a way that allows custom actions to be defined, and then used in recipes in much the same way as any core |chef| resource. A LWRP has two principal components:

* A lightweight resource that defines a set of actions and attributes
* A lightweight provider that tells |chef| how to handle each action, what to do if certain conditions are met, and so on

Once created, an LWRP becomes a |ruby| class within the |chef| organization. During each |chef| run, |chef| will read the lightweight resources from recipes and process them alongside all of the other resources. When it is time to configure the node, |chef| will use the corresponding lightweight provider to determine the steps required to bring the system into the desired state.
