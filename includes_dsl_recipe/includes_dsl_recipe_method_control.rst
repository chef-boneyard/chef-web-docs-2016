.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``control`` method to define an audit.

The syntax for the ``control`` method is as follows:

.. code-block:: ruby

   control "name" do
     it "should do something" do
       expect(something).to/.to_not be_something
   end

where:

* ``control`` defines each individual audit. Ideally, each ``control`` block maps to a specific audit
* Each ``control`` block must define at least one validation to perform. Validations are contained within an ``it`` block. Each ``it`` block is processed as an individual statement during the |chef client| run's audit mode phase and is shown individually in the output
* An ``expect(something).to/.to_not be_something`` represents a statement that defines each individual test. These statements are defined using patterns similar to |rspec| matchers. For example, ``to``, ``to_not``, ``be``, and so on. For example, a test that expects the |postgresql| pacakge to not be installed would be similar to ``expect(package("postgresql")).to_not be_installed`` and a test that ensures a service is enabled would be similar to ``expect(service("init")).to be_enabled``. For more information about the types of statements that may be built, see the sections below for more information about file, package, and service matchers

For example:

.. code-block:: ruby
   
   control "mysql package" do
     it "should be installed" do
       expect(package("mysql")).to be_installed.with_version("5.6")
     end
   end

or:

.. code-block:: ruby
   
   control "postgres package" do
     it "should not be installed" do
       expect(package("postgresql")).to_not be_installed
     end
   end
   
or:

.. code-block:: ruby
   
   control "mysql service" do
     let(:mysql_service) { service("mysql") }
     it "should be enabled" do
       expect(mysql_service).to be_enabled
     end
     it "should be running" do
       expect(mysql_service).to be_running
     end
   end

The ``control_group`` block is processed when the |chef client| run is run in |chef client_audit|. If the audit was successful, the |chef client| will return output similar to:

.. code-block:: bash

   Audit Mode
     mysql package
       should be installed

or: 

.. code-block:: bash

   Audit Mode
     postgres package
       should not be installed

or:

.. code-block:: bash

   Audit Mode
     mysql service
       should be enabled
       should be running



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
   8 examples, 7 failures
   
   Failed examples:
   
   rspec /var/chef/cache/cookbooks/grantmc/recipes/default.rb:21 # Audit Mode mysql package should be installed

or:

.. code-block:: bash

   Starting audit phase
   
   Audit Mode
     postgres package
     should not be installed

   2) Audit Mode mysql service should be enabled
     Failure/Error: expect(mysql_service).to be_enabled
       expected Service "mysql" to be enabled
     # /var/chef/cache/cookbooks/grantmc/recipes/default.rb:35:in 'block (3 levels) in from_file'

   Finished in 0.5745 seconds (files took 0.46481 seconds to load)
   8 examples, 7 failures
   
   Failed examples:

   rspec /var/chef/cache/cookbooks/grantmc/recipes/default.rb:34 # Audit Mode mysql service should be enabled

or:

.. code-block:: bash

   Starting audit phase
   
   Audit Mode
     mysql service
     should be enabled (FAILED - 2)
     should be running (FAILED - 3)
   
   3) Audit Mode mysql service should be running
      Failure/Error: expect(mysql_service).to be_running
       expected Service "mysql" to be running
     # /var/chef/cache/cookbooks/grantmc/recipes/default.rb:38:in 'block (3 levels) in from_file'   
   
   Finished in 0.5745 seconds (files took 0.46481 seconds to load)
   8 examples, 7 failures
   
   Failed examples:
   
   rspec /var/chef/cache/cookbooks/grantmc/recipes/default.rb:37 # Audit Mode mysql service should be running
