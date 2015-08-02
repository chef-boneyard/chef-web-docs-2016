=====================================================
ifconfig
=====================================================

.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

.. include:: ../../includes_resources/includes_resource_ifconfig.rst

Syntax
=====================================================
.. include:: ../../includes_resources/includes_resource_ifconfig_syntax.rst

Actions
=====================================================
.. include:: ../../includes_resources/includes_resource_ifconfig_actions.rst

Properties
=====================================================
.. include:: ../../includes_resources/includes_resource_ifconfig_attributes.rst

.. 
.. Providers
.. =====================================================
.. .. include:: ../../includes_resources_common/includes_resources_common_provider.rst
.. 
.. .. include:: ../../includes_resources_common/includes_resources_common_provider_attributes.rst
.. 
.. .. include:: ../../includes_resources/includes_resource_ifconfig_providers.rst
.. 

Examples
=====================================================
|generic resource statement|

**Configure a network interface**

.. include:: ../../step_resource/step_resource_ifconfig_configure_network_interface.rst

**Specify a boot protocol**

.. code-block:: ruby

   ifconfig "33.33.33.80" do
     bootproto "dhcp"
     device "eth1"
   end

will create the following interface:

.. code-block:: ruby

   vagrant@default-ubuntu-1204:~$ cat /etc/network/interfaces.d/ifcfg-eth1 
   iface eth1 inet dhcp

**Specify a static IP address**

.. code-block:: ruby

   ifconfig "33.33.33.80" do
     device "eth1"
   end

will create the following interface:

.. code-block:: ruby

   iface eth1 inet static
     address 33.33.33.80

**Update a static IP address with a boot protocol**

.. code-block:: ruby

   ifconfig "33.33.33.80" do
     bootproto "dhcp"
     device "eth1"
   end

will update the interface from ``static`` to ``dhcp``:

.. code-block:: ruby

   iface eth1 inet dhcp
     address 33.33.33.80
