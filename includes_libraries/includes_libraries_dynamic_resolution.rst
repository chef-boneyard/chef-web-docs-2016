.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Resources and providers are resolved dynamically and can handle multiple ``provides`` lines for a specific platform. When multiple ``provides`` lines exist, such as ``Homebrew`` and ``MacPorts`` packages for the |mac os x| platform, then one is selected based on resource priority mapping performed by the |chef client| during the |chef client| run.

Use the following helpers in a library to get and/or set resource and/or provider priority mapping before any recipes are compiled:

.. list-table::
   :widths: 250 250
   :header-rows: 1

   * - Helper
     - Description
   * - ``Chef.get_provider_priority_array(resource_name)``
     - Use to get the priority mapping for a provider.
   * - ``Chef.get_resource_priority_array(resource_name)``
     - Use to get the priority mapping for a resource.
   * - ``Chef.set_provider_priority_array(resource_name, Array<Class>, *filter)``
     - Use to set the priority mapping for a provider.
   * - ``Chef.set_resoruce_priority_array(resource_name, Array<Class>, *filter)``
     - Use to set the priority mapping for a resource.

For example:

.. code-block:: ruby

   Chef.set_resource_priority_array(:package, [ Chef::Resource::MacportsPackage ], os: 'darwin')
