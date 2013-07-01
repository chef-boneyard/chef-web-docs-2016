.. This is an included how-to. 


|chef| includes a stable version of |ruby| as part of the |omnibus installer|. The path to this version of |ruby| must be added to the ``$PATH`` environment variable and saved in the configuration file for the command shell (|bash|, |csh|, and so on). In a command window, type the following:

.. code-block:: bash

   echo 'export PATH="/opt/chef/embedded/bin:$PATH"' >> ~/.configuration_file && source ~/.configuration_file

where ``configuration_file`` is the name of the configuration file for the specific command shell. For example, if |bash| were the command shell and the configuration file were named ``bash_profile``, the command would look something like the following:

.. code-block:: bash

   echo 'export PATH="/opt/chef/embedded/bin:$PATH"' >> ~/.bash_profile && source ~/.bash_profile
