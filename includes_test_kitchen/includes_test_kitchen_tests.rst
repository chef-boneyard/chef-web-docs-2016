.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |kitchen| test is an executable test that fails when the assumptions are proven false. A test is written in |ruby| and must be located in the ``/tests`` directory within the cookbook that will be tested. The following test frameworks are good options for building tests with |kitchen|: 

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Test Framework
     - Description
   * - `Bats <https://github.com/sstephenson/bats>`_
     - Bats (or Bash Automated Testing System) is an testing framework for |bash| and also the default framework for |kitchen|.
   * - `ChefSpec <https://github.com/sethvargo/chefspec>`_
     - Rspec-based tests for Chef.
   * - `Minitest <https://github.com/seattlerb/minitest>`_
     - A small, fast, unit testing framework.
   * - `Rspec <http://rspec.info>`_
     - The primary testing framework for |ruby|, using the words ``describe`` and ``it`` to express tests as conversation. ChefSpec, Minitest, Serverspec are all based on Rspec. 
   * - `Serverspec <http://serverspec.org>`_
     - Rspec-based tests for servers.

The syntax used for the tests depends on the testing framework. Rspec-based testing is similar to the following:

.. code-block:: ruby

   it 'what_the_test_does' do
     # Ruby code that defines the test
   end

For example:

.. code-block:: ruby

   it 'contains the default configuration settings' do
     file(File.join(node['chef_client']['conf_dir'], 'client.rb')).must_match('^chef_server_url')
     file(File.join(node['chef_client']['conf_dir'], 'client.rb')).must_match('^validation_client_name')
   end

or:

.. code-block:: ruby

   it 'converts ssl_verify_mode to a symbol' do
     file(File.join(node['chef_client']['conf_dir'], 'client.rb')).must_match('^ssl_verify_mode :verify_peer')
   end

or:

.. code-block:: ruby

   it 'disables ohai plugins' do
     regexp = 'Ohai::Config\[:disabled_plugins\] =\s+\["passwd"\]'
     file(File.join(node['chef_client']['conf_dir'], 'client.rb')).must_match(/#{regexp}/)
   end

Handlers can also be run as part of cookbook testing. At the top of the test file, use:

.. code-block:: ruby

   require File.expand_path('../support/helpers', __FILE__)

to specify the handler, and then include the handler within the test:

.. code-block:: ruby

   it 'enables exception_handlers' do
     file(File.join(node['chef_client']['conf_dir'], 'client.rb')).must_match(
       '^exception_handlers << Report::UpdateResource.new'
     )
   end

