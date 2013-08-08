.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A lightweight provider is a custom provider that defines the steps that are required to complete one (or more) actions defined by a lightweight resource. A lightweight provider and lightweight resource work together, each being defined in the same cookbook (the ``/providers`` and ``/resources`` subdirectories, respectively); together, they are referred as a |lwrp| (or "lightweight resource/provider"). A lightweight provider is always authored using |ruby|. Anything that can be done using |ruby| can be done in a lightweight provider. In addition to using |ruby|, the |dsl provider| provides additional methods that are specific to |chefx|.
