=====================================================
About HWRPs
=====================================================

A HWRP is a term used for a custom resource that is not created using a cookbook's ``/resources`` and ``/providers`` directories, but is instead created using |ruby| and is located in a cookbook's ``/libraries`` directory. This type of custom resource is more complex and must be authored entirely in |ruby|.

Once created, a custom resource becomes a |ruby| class. During each |chef client| run, the |chef client| will read the custom resource from a recipe and will process it alongside all other resources. When it is time to configure the node, the |chef client| will use the custom provider to determine the steps required to bring the system into the desired state.

Library Resources
=====================================================

.. include:: ../../includes_libraries/includes_libraries_custom_resource.rst

.. include:: ../../includes_libraries/includes_libraries_custom_resource_core.rst

.. include:: ../../includes_libraries/includes_libraries_custom_resource_example.rst
