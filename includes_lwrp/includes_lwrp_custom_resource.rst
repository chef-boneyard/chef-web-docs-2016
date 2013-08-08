.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A lightweight resource is a custom resource that defines an action to be completed, which are then processed by a lightweight provider during the |chef client| run. A lightweight provider and lightweight resource work together, each being defined in the same cookbook (the ``/providers`` and ``/resources`` subdirectories, respectively); together, they are referred as a |lwrp| (or "lightweight resource/provider"). A lightweight resource is always authored using |ruby|. Anything that can be done using |ruby| can be done in a lightweight resource. In addition to using |ruby|, the |dsl resource| provides additional methods that are specific to |chefx|.
