.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|whyrun| mode is a way to see what |chef| would have configured, had an actual |chef| run occurred. This approach is similar to the concept of "no-operation" (or "no-op"): decide what should be done, but then don't actually do anything until it's done right. This approach to configuration management can help identify where complexity exists in the system, where inter-dependencies may be located, and to verify that everything will be configured in the desired manner.

When |whyrun| mode is enabled, a |chef| run will occur that does everything up to the point at which configuration would normally occur. This includes getting the configuration data, authenticating to the |chef server|, rebuilding the node object, expanding the run list, getting the necessary cookbook files, resetting node attributes, identifying the resources, and building the resource collection and does not include mapping each resource to a provider or configuring any part of the system.

.. note:: why-run mode is not a replacement for running cookbooks in a test environment that mirrors the production environment. |opscode| uses why-run mode to learn more about what is going on, but also test-kitchen on developer systems, along with an internal |openstack| cloud and external cloud providers to test more thoroughly.

The ``whyrun_supported?`` method is used to tell |chef| that a lightweight provider supports |whyrun| mode. The syntax for the ``whyrun_supported?`` method is as follows:

.. code-block:: ruby

   def whyrun_supported?
     true
   end

where ``whyrun_supported?`` is set to ``true`` for any lightweight provider that supports using |whyrun| mode. When |whyrun| mode is supported by the a lightweight provider, the ``converge_by`` method is used to define the strings that are logged by |chef| when it is run in |whyrun| mode.


