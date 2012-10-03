.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp windows batch| is used to execute a batch script using the |windows cmd exe| interpreter (much like the script resources for |bash|, |csh|, |windows powershell|, |python|, and |ruby|). A temporary file is created and then executed like other script resources, rather than run inline. A script resource is not idempotent by nature, as they nature of their use varies from user to user. Use the ``not_if`` or ``only_if`` meta parameters to guard this lightweight resource for idempotence.
