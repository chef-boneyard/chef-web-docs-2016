.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A LWRP is a part of a cookbook that is used to extend |chef| in a way that allows custom actions to be defined, and then used in recipes in much the same way as any core |chef| resource. A LWRP has two principal components:

* A `lightweight resource <http://docs.opscode.com/lwrp_custom_resource.html>`_ that defines a set of actions and attributes
* A lightweight provider that tells |chef| how to handle each action, what to do if certain conditions are met, and so on

In addition, most lightweight providers are built `using core Chef resources <http://docs.opscode.com/lwrp_custom_provider.html>`_ and some lightweight providers are built `using custom Ruby code <http://docs.opscode.com/lwrp_custom_provider_ruby.html>`_

Once created, a LWRP becomes a |ruby| class within the |chef| organization. During each |chef| run, |chef| will read the lightweight resources from recipes and process them alongside all of the other resources. When it is time to configure the node, |chef| will use the corresponding lightweight provider to determine the steps required to bring the system into the desired state.

Where the lightweight resource represents a piece of the system, its current state, and the action that is needed to move it to the desired state, a lightweight provider defines the steps that are required to bring that piece of the system from its current state to the desired state. A LWRP behaves similar to |chef| resources and providers:

* A lightweight resource is a key part of a recipe
* A lightweight resource defines the actions that can be taken
* During a |chef| run, each lightweight resource is identified, and then associated with a lightweight provider
* A lightweight provider does the work to complete the action requested by the lightweight resource




