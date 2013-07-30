.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|resource desc registry_key|

64-bit versions of |windows| have a 32-bit compatibility layer in the registry that reflects and re-directs certain keys (and their sub-keys) into specific locations. By default, the registry functionality will default to the machine architecture of the system that is being configured. The |chef client| can access any reflected or re-directed registry key. The |chef client| can write to any 64-bit registry location. (This behavior is not affected by the |chef client| running as a 32-bit application.) For more information, see: |http resource registry_key msdn|.
