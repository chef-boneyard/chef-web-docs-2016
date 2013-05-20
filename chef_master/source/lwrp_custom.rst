=====================================================
Custom LWRPs
=====================================================

.. warning:: DRAFT

.. include:: ../../includes_lwrp/includes_lwrp.rst

.. SOME NOTES ... MAYBE INTEGRATE, MAYBE KEEP SEPARATE, MAYBE MAYBE

* LWRPs are used to abstract a repeated pattern of behavior on the system using a declarative interface that doesn't already exist in Chef.
* LWRPs have two components: a resource and a provider.
* For LWRPs, both the resource and provider must be in the same cookbook, in the ``/resources`` and ``/providers`` directory of cookbooks, respectively.
* A lightweight resource describes the action(s) that Chef may take against an object in the system.

.. SEPARATE _INCLUDE BELOW; THIS ONE IS ABOUT THE COOKBOOK DIRECTORIES THAT HOLD THE LWRP COMPONENTS

A LWRP is defined in a cookbook in the following cookbook subdirectories:

* The ``/resources`` directory contains a |ruby| file for each lightweight resource
* The ``/providers`` directory contains a |ruby| file for each lightweight provider

where there is typically a 1:1 ratio of lightweight resource files to lightweight provider files, with both the lightweight resource and lightweight provider having the same file name. For example: a resource named ``open_file.rb`` and a provider named ``open_file.rb``.

.. END SEPARATE _INCLUDE ABOVE

This topic will walk through the structure, syntax, and options available to lightweight resources and lightweight providers.

File Locations
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_file_locations.rst


Lightweight Resources
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_resource.rst


Lightweight Providers
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

A lightweight provider is always authored using |ruby|; anything that can be done using |ruby| can also be done in a lightweight provider. In addition to |ruby|, the Provider DSL provides additional methods that are specific to |chef|.

There are two main types of lightweight providers.

Use |chef| Resources
-----------------------------------------------------
Many lightweight providers are built using only core |chef| resources, such as |resource file|, |resource cookbook_file|, |resource template|, and so on. These types of resources effectively use recipes to let |chef| know when to use the core resources during the |chef| run. In addition, |whyrun| mode is enabled by default for all core |chef| resources, so build the lightweight resource to support |whyrun| mode is as simple as adding the ``whyrun_supported?`` method to the top of the lightweight provider.

.. warning:: It is not recommended to mix core |chef| resources with resources built with custom |ruby| within the same lightweight provider. This is mostly to ensure the proper processing of core |chef| resources that are embedded into the resource collection by a lightweight provider.

Use Custom Ruby
-----------------------------------------------------
Some lightweight providers are built using custom |ruby| code. In general, it is recommended to use the core |chef| resources for |chef| resource collection processing as much as possible. That said, lightweight providers are built using |ruby| and can take any shape and form required.

Compare Platform and Lightweight Resources
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource_compared_to_platform_resource.rst
