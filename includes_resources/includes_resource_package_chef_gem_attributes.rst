.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``compile_time``
     - |chef_gem compile_time| Recommended value: ``false``. The |chef client| will emit a warning when this setting is ``true``. Use a ``respond_to?`` check to ensure backward compatibility. For example:

       .. code-block:: ruby

          chef_gem 'aws-sdk' do
            compile_time false if respond_to?(:compile_time)
          end

       .. note:: Older versions of the |chef client| will need a workaround when ``chef-sugar`` is a dependency on a cookbook that is loaded during the |chef client| run: 

          .. code-block:: ruby

             chef_gem 'gem_name' do
               compile_time true if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
             end
   * - ``options``
     - |command options|
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``source``
     - Optional. |source resource package|
   * - ``timeout``
     - |timeout|
   * - ``version``
     - |version package|
