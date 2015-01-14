.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``control`` method to define a specific series of tests that comprise an individual audit. A ``control`` method must be contained within a ``control_group`` block. A ``control_group`` block may contain multiple ``control`` methods.

The syntax for the ``control`` method is as follows:

.. code-block:: ruby

   control_group "audit name" do
     control "name" do
       it "should do something" do
         expect(something).to/.to_not be_something
       end
     end
   end

where:

* ``control_group`` groups one (or more) ``control`` blocks
* ``control`` defines an audit
* Each ``control`` block must define at least one validation
* Each ``it`` statement defines a single validation. ``it`` statements are processed individually when the |chef client| is run in |chef client_audit|
* An ``expect(something).to/.to_not be_something`` is a statement that represents the individual test. In other words, this statement tests if something is expected to be (or not be) something. For example, a test that expects the |postgresql| pacakge to not be installed would be similar to ``expect(package("postgresql")).to_not be_installed`` and a test that ensures a service is enabled would be similar to ``expect(service("init")).to be_enabled``

For example, a package is installed:

.. code-block:: ruby

   control_group "audit name" do
     control "mysql package" do
       it "should be installed" do
         expect(package("mysql")).to be_installed
       end
     end
   end

A package that is installed with a specific version:

.. code-block:: ruby

   control_group "audit name" do
     control "mysql package" do
       it "should be installed" do
         expect(package("mysql")).to be_installed.with_version("5.6")
       end
     end
   end

A package that is not installed:

.. code-block:: ruby

   control_group "audit name" do
     control "postgres package" do
       it "should not be installed" do
         expect(package("postgresql")).to_not be_installed
       end
     end
   end

A service that is enabled and running:

.. code-block:: ruby

   control_group "audit name" do
     control "mysql service" do
       let(:mysql_service) { service("mysql") }
       it "should be enabled" do
         expect(mysql_service).to be_enabled
       end
       it "should be running" do
         expect(mysql_service).to be_running
       end
     end
   end

The ``control_group`` block is processed when the |chef client| run is run in |chef client_audit|. If the audit was successful, the |chef client| will return output similar to:

.. code-block:: bash

   Audit Mode
     mysql package
       should be installed

If an audit was unsuccessful, the |chef client| will return output similar to:

.. code-block:: bash

   Starting audit phase
   
   Audit Mode
     mysql package
     should be installed (FAILED - 1)
   
   Failures:
   
   1) Audit Mode mysql package should be installed
     Failure/Error: expect(package("mysql")).to be_installed.with_version("5.6")
       expected Package "mysql" to be installed
     # /var/chef/cache/cookbooks/grantmc/recipes/default.rb:22:in 'block (3 levels) in from_file'
   
   Finished in 0.5745 seconds (files took 0.46481 seconds to load)
   1 examples, 1 failures
   
   Failed examples:
   
   rspec /var/chef/cache/cookbooks/grantmc/recipes/default.rb:21 # Audit Mode mysql package should be installed
