.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource powershell script| resource is used to execute a script using the |windows powershell| interpreter. 

* This resource is used just like the |resource script| resource or the providers for |bash|, |csh|, |perl|, |python|, and |ruby|. The |resource powershell script| resource is similar to those, but with some small tweaks under the covers for the |windows| platform and |windows powershell| interpreter.
* This resource creates and executes a temporary file (similar to the |resource script| resource), rather than running it inline. 
* This resource includes actions (``:run`` and ``:nothing``; ) and attributes (``creates``, ``cwd``, ``environment``, ``group``, ``path``, ``timeout``, and ``user``) that are available from the |resource execute| resource.

Commands that are executed with this resource are (by their nature) not idempotent, as they are typically unique to the environment in which they are run. Use the ``not_if`` and ``only_if`` meta parameters to guard the use of this resource for idempotence.
