.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The following |kitchen yml| file shows how to configure settings related to |busser|, a test setup and execution framework designed for situations where a testing environment cannot be trusted to execute tests that depend on |serverspec|, |rspec|, |bash_bats|, |bash|, and |minitest|. 

self-administered test execution may not always be accurate.

. |busser| is `a standalone gem <https://github.com/test-kitchen/busser>`_ that can be added to |kitchen|. The following example shows how to specify |busser| as part of a |kitchen yml| file.

.. code-block:: yaml

   driver:
     name: vagrant

   busser:
     version: busser@1.2.3
	 root_path: /var/tmp/kitchen-busser
	 ruby_bindir: /opt/local/bin
     plugins: ['app_A@1.2.3', 'app_B@1.2.3', ...]

   provisioner:
     name: chef_zero
   
   platforms:
     - name: centos-5.10
	   ...
	   busser: busser-alternate@1.2.3
     - name: ...

   suites:
   
   - name: service_init
     run_list:
     - recipe[minitest-handler]
     - recipe[chef-client::config]
     - recipe[chef-client_test::service_init]
     - recipe[chef-client::init_service]
     attributes: {}
   
   - name: suite_name
     ...

where:

* ``busser:`` is a block that describes the configuration used for |busser| by |kitchen|
* ``busser@1.2.3`` is the version of |busser|
* ``plugins:`` is an array of dependencies
* ``'app_A@1.2.3'``, ``'app_B@1.2.3'``, and so is a comma-separated array that defines each dependency by application name and version; use ``x`` for the version to allow dependencies on any version
* ``busser-alternate@1.2.3`` is a platform-specific version of |busser|

For example:

.. code-block:: yaml

   driver:
     name: vagrant

   busser:
     version: busser@0.9.0rc2
	 root_path: /var/tmp/kitchen-busser
	 ruby_bindir: /opt/local/bin
     plugins: ['serverspec@0.2.6', 'minitest@x', 'bats@x', 'rspec@x']
   
   provisioner:
     name: chef_zero
   
   platforms:
     - name: centos-5.10
     - name: ...

   suites:
   
   - name: service_init
     run_list:
     - recipe[minitest-handler]
     - recipe[chef-client::config]
     - recipe[chef-client_test::service_init]
     - recipe[chef-client::init_service]
     attributes: {}
   
   - name: suite_name
     ...