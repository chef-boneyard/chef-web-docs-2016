=====================================================
Lightweight Providers w/Platform Resources
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_provider.rst

.. include:: ../../includes_lwrp/includes_lwrp_custom_provider.rst

Syntax
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_syntax.rst

|dsl provider| Methods
=====================================================
.. include:: ../../includes_dsl_provider/includes_dsl_provider.rst

action
-----------------------------------------------------
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_action.rst

.. note:: The ``converge_by`` method is not included in the previous syntax example because when |whyrun| mode is enabled in a lightweight provider that leverages platform resources, the ``converge_by`` blocks are already defined by the platform resources.

current_resource
-----------------------------------------------------
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_current_resource.rst

load_current_resource
-----------------------------------------------------
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_load_current_resource.rst

new_resource
-----------------------------------------------------
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_new_resource.rst

updated_by_last_action
-----------------------------------------------------
.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_updated_by_last_action.rst

use_inline_resources
-----------------------------------------------------
A lightweight resource should be set to inline compile mode by adding the ``use_inline_resources`` method at the top of the provider. This ensures that notifications work properly across the resource collection. For example:

.. code-block:: ruby

   use_inline_resoures

   action :run do
     # Ruby code that implements the provider
   end

.. warning:: The ``use_inline_resources`` method was added to the |chef client| starting in version 11.0 to address the following behavior. The ``use_inline_resources`` method should be considered a requirement for any lightweight resource authored against the 11.0+ versions of the |chef client|. This behavior will become the default behavior in an upcoming version of the |chef client|.

**Background**

The reason why the ``use_inline_resources`` method exists at all is due to how the |chef client| processes resources. Currently, the default behavior of the |chef client| processes a single collection of resources, converged on the node in order.

A lightweight resource is often implemented using the core |chef client| resources---|resource file|, |resource template|, |resource package|, and so on---as building blocks. A lightweight resource is then added to a recipe using the short name of the lightweight resource in the recipe (and not by using any of the building block resource components). This situation can create problems with notifications because the |chef client| does not include embedded resources in the "single collection of resources".

For example:

.. code-block:: ruby

   custom_resource "something" do
     action :run
     notifies :restart, "service[whatever]", :immediately
   end
   
   service "whatever" do
     action :nothing
   end

If the ``custom_resource`` is built using the |resource file| resource, what happens during the |chef client| run is::

   custom_resource (not updated)
     file (updated)
   service (skipped, due to ``:nothing``)

The ``custom_resource`` is converged completely, its state set to not updated before the |resource file| resource is evaluated. The ``notifies :restart`` is ignored and the service is not restarted. 

If the author of the custom resource knows in advance what notification is required, then the |resource file| resource can be configured for the notification in the provider. For example:

.. code-block:: ruby

   action :run do
     file "/tmp/foo" do
       owner "root"
       group "root"
       mode "0644"
       notifies :restart, "service[whatever]", :immediately
     end
   end

And then in the recipe:

.. code-block:: ruby

   service "whatever" do
     action :nothing
   end

This approach works, but only when the author of the lightweight resource knows what should be notified in advance of the |chef client| run. Consequently, this is less-than-ideal for most situations.

Use the ``use_inline_resources`` method to ensure that embedded resources can properly notify resources in the resource collection.

Using this method will ensure that the |chef client| processes a lightweight resource as if it were its own resource collection---a "mini |chef client| run", effectively---that is converged *before* the |chef client| converges the parent lightweight resource. This ensures that any notifications that may exist in the embedded resources are processed as if they were notifications on the parent lightweight resource. For example:

.. code-block:: ruby

   custom_resource "something" do
     action :run
     notifies :restart, "service[whatever]", :immediately
   end
   
   service "whatever" do
     action :nothing
   end

If the ``custom_resource`` is built using the |resource file| resource, what happens during the |chef client| run is::

   custom_resource (starts converging)
     file (updated)
   custom_resource (updated, because ``file`` updated)
   service (updates, because ``:immediately`` is set in the custom resource)


whyrun_supported?
-----------------------------------------------------
.. include:: ../../includes_chef_client/includes_chef_client_whyrun_mode.rst

.. include:: ../../includes_chef_client/includes_chef_client_whyrun_mode_assumptions.rst

.. include:: ../../includes_dsl_provider/includes_dsl_provider_method_whyrun_supported.rst

.. note:: When a lightweight provider contains only platform resources, the ``converge_by`` method is not required because it is already built into all of the platform `resources <http://docs.opscode.com/resource.html>`_.

Condition Statements
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_conditions.rst

Log Entries
=====================================================
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_logs.rst

rescue
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_logs_rescue.rst

Examples
=====================================================
The following examples show various lightweight providers that use platform resources.

aws_ebs_volume
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_aws_ebs_volume.rst

cron_d
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_cron_d.rst

rabbitmq_plugin
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_rabbitmq_plugin.rst

ssh_known_hosts_entry
-----------------------------------------------------
.. include:: ../../includes_lwrp/includes_lwrp_custom_provider_example_ssh_known_hosts_entry.rst
