.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use the ``http_proxy`` or ``https_proxy`` settings to configure |kitchen| to work in an environment where proxies are necessary. For example:

.. code-block:: yaml

   driver: 
     name: vagrant
   
   provisioner: 
     name: chef_zero
     http_proxy: http://10.0.0.1
