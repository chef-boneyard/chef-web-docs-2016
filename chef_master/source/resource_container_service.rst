=====================================================
container_service
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_container_service.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_container_service_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_container_service_actions.rst

Attributes
=====================================================
.. include:: ../../includes_resources/includes_resource_container_service_attributes.rst

Providers
=====================================================
.. include:: ../../includes_resources/includes_resource_container_service_providers.rst

Examples
=====================================================
|generic resource statement|

**xxxxx**

.. code-block:: ruby

   require 'chef/container'
   
   service 'apache2' do
     action :start
   end
   
   container_service 'apache2' do
     command 'apachectl -k start'
   end

**xxxxx**

.. code-block:: ruby

   require 'chef/container'
   
   container_service_runit 'apache2' do
     command 'apachectl -k start'
   end