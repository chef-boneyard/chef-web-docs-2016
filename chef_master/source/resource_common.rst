=====================================================
Common Functionality 
=====================================================

All resources share a set of common actions, attributes, conditional executions, notifications, and relative path options.

.. list-table::
   :widths: 160 440
   :header-rows: 1

   * - Common Item
     - Description
   * - :doc:`resource_common_actions`
     - The ``:nothing`` action can be used with any resource or lightweight resource.
   * - :doc:`resource_common_attributes`
     - The ``ignore_failure``, ``provider``, ``retries``, ``retry_delay``, and ``supports`` attributes can be used with any resource or lightweight resources.
   * - :doc:`resource_common_conditionals`
     - The ``not_if`` and ``only_if`` conditional executions can be used to put additional guards around certain resources so that they are only run when the condition is met. 
   * - :doc:`resource_common_notifications`
     - The ``notifies`` and ``subscribes`` notifications can be used with any resource.
   * - :doc:`resource_common_relative_paths`
     - The ``#{ENV['HOME']}`` relative path can be used with any resource.