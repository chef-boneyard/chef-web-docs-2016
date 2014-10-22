.. This is an included how-to. 


.. To specify a custom installation command sequence:

.. code-block:: bash

   $ knife bootstrap --bootstrap-install-command "curl -l http://mycustomserver.com/custom_install_chef_script.sh | sudo bash -s --"