=====================================================
Notes for |chef client| Upgrades 
=====================================================

The following sections contain more information about the upgrade process from earlier versions of the |chef client| to the |chef client| 12 release.

|resource execute| Resource, ``path`` Attribute
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_resource_execute_attribute_path.rst


Chef::Provider, Custom Resources
=====================================================
If a custom resource was created in the ``/libraries`` directory of a cookbook that also uses a core resource from the |chef client| within the custom resource, the base class that is associated with that custom resource must be updated. In previous versions of the |chef client|, the ``Chef::Provider`` class was all that was necessary because the |dsl recipe| was included in the ``Chef::Provider`` base class. 

For example, the following example from the `lvm cookbook <https://github.com/opscode-cookbooks/lvm/blob/master/libraries/provider_lvm_logical_volume.rb>`_ uses the |resource directory| and |resource mount| resources to define the ``lvm_logical_volume`` custom resource:

.. code-block:: ruby

   class Chef
     class Provider
       class LvmLogicalVolume < Chef::Provider
         include Chef::Mixin::ShellOut

         ...
         if new_resource.mount_point
           if new_resource.mount_point.is_a?(String)
             mount_spec = { :location => new_resource.mount_point }
           else
             mount_spec = new_resource.mount_point
           end

           dir_resource = directory mount_spec[:location] do
             mode 0755
             owner 'root'
             group 'root'
             recursive true
             action :nothing
             not_if { Pathname.new(mount_spec[:location]).mountpoint? }
           end
           dir_resource.run_action(:create)
           updates << dir_resource.updated?

           mount_resource = mount mount_spec[:location] do
             options mount_spec[:options]
             dump mount_spec[:dump]
             pass mount_spec[:pass]
             device device_name
             fstype fs_type
             action :nothing
           end
           mount_resource.run_action(:mount)
           mount_resource.run_action(:enable)
           updates << mount_resource.updated?
         end
         new_resource.updated_by_last_action(updates.any?)
       end

Starting with |chef client| 12, the |dsl recipe| is removed from the ``Chef::Provider`` base class and is available by using ``LWRPBase``. Cookbooks that contain custom resources in the ``/libraries`` directory of a cookbook should:

* Be inspected for instances of a) the ``Chef::Provider`` base class, and then b) for the presence of any core resources from the |chef client|
* Be updated to use the ``LWRPBase`` base class

For example, the same cookbook as shown above, but updated to use the ``LWRPBase`` class:

.. code-block:: ruby

   class Chef
     class Provider
       class LvmLogicalVolume < Chef::Provider::LWRPBase
         include Chef::Mixin::ShellOut

         ...
         if new_resource.mount_point
           if new_resource.mount_point.is_a?(String)
             mount_spec = { :location => new_resource.mount_point }
           else
             mount_spec = new_resource.mount_point
           end

           dir_resource = directory mount_spec[:location] do
             mode 0755
             owner 'root'
             group 'root'
             recursive true
             action :nothing
             not_if { Pathname.new(mount_spec[:location]).mountpoint? }
           end
           dir_resource.run_action(:create)
           updates << dir_resource.updated?

           mount_resource = mount mount_spec[:location] do
             options mount_spec[:options]
             dump mount_spec[:dump]
             pass mount_spec[:pass]
             device device_name
             fstype fs_type
             action :nothing
           end
           mount_resource.run_action(:mount)
           mount_resource.run_action(:enable)
           updates << mount_resource.updated?
         end
         new_resource.updated_by_last_action(updates.any?)
       end

No other changes are required.