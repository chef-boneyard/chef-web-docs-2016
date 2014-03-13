=====================================================
kitchen
=====================================================

.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen.rst

.. warning:: This topic details functionality that will be packaged with Chef in an upcoming release. See http://kitchen.ci/docs/getting-started/ for the official description of test-kitchen, how to get it set up, and how to use it for integrated cookbook testing.

.. kitchen console
.. =====================================================
.. .. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_console.rst
.. 
.. Syntax
.. -----------------------------------------------------
.. .. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_console_syntax.rst
.. 
.. Options
.. -----------------------------------------------------
.. This subcommand does not have any options.
.. 
.. Examples
.. -----------------------------------------------------
.. None.

kitchen converge
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_converge.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_converge_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_converge_options.rst

Examples
-----------------------------------------------------
.. code-block:: bash

   $ kitchen converge default-ubuntu-10.04

to return something similar to:

.. code-block:: bash

   -----> Starting Kitchen (v1.0.0)
   -----> Converging <default-ubuntu-10.04>
   -----> Installing Chef Omnibus (true)
   ... # install the chef-client
   ... # start a chef-client run
   Finished converging <default-ubuntu-10.04> (2m1.12s).
   -----> Kitchen is finished. (2m3.45s)


kitchen create
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_create_options.rst

Examples
-----------------------------------------------------
None.

kitchen destroy
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_destroy.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_destroy_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_destroy_options.rst

Examples
-----------------------------------------------------
None.

kitchen diagnose
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_diagnose.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_diagnose_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_diagnose_options.rst

Examples
-----------------------------------------------------
None.

kitchen driver create
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_driver_create.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_driver_create_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_driver_create_options.rst

Examples
-----------------------------------------------------
None.

kitchen driver discover
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_driver_discover.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_driver_discover_syntax.rst

Options
-----------------------------------------------------
This subcommand does not have any options.

Examples
-----------------------------------------------------
None.

kitchen init
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_init.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_init_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_init_options.rst

Examples
-----------------------------------------------------
.. code-block:: bash

   $ kitchen init --driver=kitchen-vagrant

will return something similar to:

.. code-block:: bash

   create .kitchen.yml
   create test/integration/default
   create .gitignore
   append .gitignore
   append .gitignore
   run    gem install kitchen-vagrant from "."
   Fetching: kitchen-vagrant-0.12.0.gem (100%)
   Successfully installed kitchen-vagrant-0.12.0
   1 gem installed


kitchen list
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_list_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_list_options.rst

Examples
-----------------------------------------------------
.. code-block:: bash

   $ kitchen list

to return something similar to:

.. code-block:: bash

   Instance              Driver   Provisioner   Last Action
   default-ubuntu-10.04  vagrant  chef_zero     created
   default-centos-6.5    vagrant  chef_zero     created

or:

.. code-block:: bash

   Instance              Driver   Provisioner   Last Action
   default-ubuntu-10.04  vagrant  chef_zero     converged
   default-centos-6.5    vagrant  chef_zero     created

or:

.. code-block:: bash

   Instance              Driver   Provisioner   Last Action
   default-ubuntu-10.04  vagrant  chef_zero     verified
   default-centos-6.5    vagrant  chef_zero     created

or:

.. code-block:: bash

   Instance              Driver   Provisioner   Last Action
   default-ubuntu-10.04  vagrant  chef_zero     created
   default-centos-6.5    vagrant  chef_zero     <not created>

or if there are multiple suites defined, such as ``default`` and ``test``:

.. code-block:: bash

   Instance              Driver   Provisioner   Last Action
   default-ubuntu-10.04  vagrant  chef_zero     <not created>
   default-centos-6.5    vagrant  chef_zero     <not created>
   test-ubuntu-10.04     vagrant  chef_zero     <not created>
   test-centos-6.5       vagrant  chef_zero     <not created>

kitchen login
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_login.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_login_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_login_options.rst

Examples
-----------------------------------------------------
.. code-block:: bash

   $ kitchen login default-ubuntu-10.04

to return something similar to:

.. code-block:: bash

   Welcome to Ubuntu 10.04.2 LTS (GNU/Linux 3.5.0-23-generic x86_64)
   Last login: Mon Mar 28 17:34:26 2014 from 127.0.0.5
   vagrant@default-ubuntu-10.04:~$

kitchen setup
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_setup.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_setup_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_setup_options.rst

Examples
-----------------------------------------------------
None.

kitchen test
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_test.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_test_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_test_options.rst

Examples
-----------------------------------------------------
.. code-block:: bash

   $ kitchen test default-ubuntu-10.04

to return something similar to:

.. code-block:: bash

   -----> Starting Kitchen (v1.0.0)
   -----> Cleaning up any prior instances of <default-ubuntu-10.04>
   -----> Destroying <default-ubuntu-10.04>...
   ...
   Finished destroying <default-ubuntu-10.04> (0m3.06s).
   -----> Testing <default-ubuntu-10.04>
   -----> Creating <default-ubuntu-10.04>...
   Bringing machine 'default' up with 'virtualbox' provider...
   ...
   Vagrant instance <default-ubuntu-10.04> created.
   Finished creating <default-ubuntu-10.04> (0m46.22s).
   -----> Converging <default-ubuntu-10.04>...
   ...
   -----> Installing Chef Omnibus (true)
   downloading https://www.opscode.com/chef/install.sh
   ...
   Installing Chef
   ...
   Setting up chef (11.12.0-1.ubuntu.12.04) ...
   Thank you for installing Chef!
   ...
   Starting Chef Client, version 11.12.0
   ...
   Converging 2 resources
   Recipe: git::default
     * package[git] action install[date/time] INFO: Processing package[git] action install (git::default line 10)
   
       - install version 1:2.3.4.5-6 of package git
   
     * log[log_description] action write[date/time] INFO: Processing log[log_description] action write (git::default line 5)
   ...
   Chef Client finished, 2 resources updated
   Finished converging <default-ubuntu-10.04> (0m45.17s).
   -----> Starting Kitchen (v1.0.0)
   -----> Setting up <default-ubuntu-10.04>
   Fetching: <name of test tool> (100%)
   Successfully installed <name of test tool>
   # gems installed
   -----> Setting up <name of test tool>
   ...
   -----> Running <name of test tool> test suite
    ✓ <test result>

   2 tests, 0 failures
        Finished verifying <default-ubuntu-10.04> (2m1.12s).
   -----> Kitchen is finished. (2m3.45s)
   $ echo $?
   0

kitchen verify
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_verify.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_verify_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_verify_options.rst

Examples
-----------------------------------------------------
.. code-block:: bash

   $ kitchen verify default-ubuntu-10.04

to return something similar to:

.. code-block:: bash

   -----> Starting Kitchen (v1.0.0)
   -----> Setting up <default-ubuntu-10.04>
   Fetching: <name of test tool> (100%)
   Successfully installed <name of test tool>
   # gems installed
   -----> Setting up <name of test tool>
   ...
   -----> Running <name of test tool> test suite
    ✓ <test result>

   2 tests, 0 failures
        Finished verifying <default-ubuntu-10.04> (2m1.12s).
   -----> Kitchen is finished. (2m3.45s)
   $ echo $?
   0

or:

.. code-block:: bash

   -----> Starting Kitchen (v1.0.0)
   -----> Setting up <default-ubuntu-10.04>
   Fetching: <name of test tool> (100%)
   Successfully installed <name of test tool>
   # gems installed
   -----> Setting up <name of test tool>
   ...
   -----> Running <name of test tool> test suite
    - <test result>

   2 tests, 1 failures
   ... exit code was 1
   >>>>>> description of failure
   ...
   >>>>>> ----------------------
   $ echo $?
   10

kitchen version
=====================================================
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_version.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_ctl_kitchen/includes_ctl_kitchen_version_syntax.rst

Options
-----------------------------------------------------
This subcommand does not have any options.

Examples
-----------------------------------------------------
.. code-block:: bash

   $ kitchen version

will return something similar to:

.. code-block:: bash

   Text Kitchen version 1.0.0