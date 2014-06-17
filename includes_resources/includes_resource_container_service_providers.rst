.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The provider for the |resource container_service| resource replaces the platform-specific provider normally used by the |resource service| resource, but only after the |chef client| has determined the correct platform for the container. 

The following providers are available. Use the short name to call the provider from a recipe.

.. list-table::
    :widths: 150 100 350
    :header-rows: 1

 * - Long name
   - Short name
   - Notes
 * - ``Chef::Provider::Supervisor::Runit``
   - ``runit``
   - The default provider
