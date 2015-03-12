.. This is an included how-to. 


To view the list of |kitchen| instances:

.. code-block:: bash

   $ kitchen list

A list will be returned, similar to:

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

