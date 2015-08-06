.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A start handler can be configured in the |client rb| file by adding the following setting:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``start_handlers``
     - |handler config_start|

For example, the |reporting| start handler adds the following code to the top of the |client rb| file:

.. code-block:: ruby

   begin
     require 'chef_reporting'
     start_handlers << Chef::Reporting::StartHandler.new()
   rescue LoadError
     Chef::Log.warn 'Failed to load #{lib}. This should be resolved after a chef run.'
   end

This ensures that when the |chef client| run begins the ``chef_reporting`` event handler is enabled. The ``chef_reporting`` event handler is part of a |gem| named ``chef-reporting``. The |resource chef_gem| resource is used to install this |gem|:

.. code-block:: ruby

   chef_gem 'chef-reporting' do
     action :install
   end
