.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This behavior creates issues for notifications, because notifications that are triggered embedded resources are not able to notify anything that has already finished processing. This behavior is changed in the 11.0.0 (and later) versions of the |chef client| with the addition of the ``use_inline_resources`` method to the `provider DSL <http://docs.chef.io/lwrp_custom_provider.html#use-inline-resources>`_.
