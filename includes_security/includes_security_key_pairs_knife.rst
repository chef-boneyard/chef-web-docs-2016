.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef| uses RSA public key-pairs to authenticate |knife| with the |chef server| every time |knife| attempts to access the |chef server|. This ensures that each instance of |knife| is properly registered with the |chef server| and that only trusted users can make changes to the data.