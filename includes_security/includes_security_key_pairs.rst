.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| uses RSA public key-pairs to authenticate a |chef client| with the |chef server| every time a |chef client| needs access to data that is stored on the |chef server|. This prevents any node from accessing data that it shouldn't and ensures that only nodes that are properly registered with the |chef| server can be managed by |chef|.
