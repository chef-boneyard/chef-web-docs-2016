.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The environment variables ``http_proxy`` and ``https_proxy`` are honored by test-kitchen for proxies.

Additionally, the Chef config file will be read to look for proxy configuration. If ``http_proxy``, ``https_proxy``, ``ftp_proxy``, or ``no_proxy`` is set in the |client rb| file, the |chef client| will configure the ``ENV`` variable based on these (and related) settings. For example:

.. code-block:: ruby

   http_proxy 'http://proxy.example.org:8080'
   http_proxy_user 'myself'
   http_proxy_pass 'Password1'

will be set to:

.. code-block:: ruby

   ENV['http_proxy'] = 'http://myself:Password1@proxy.example.org:8080'

test-kitchen also supports ``http_proxy`` and ```https_proxy`` in the ``.kitchen.yml`` file:

.. code-block:: yaml

   driver:
     name: vagrant

   provisioner:
     name: chef_zero
     http_proxy: http://10.0.0.1
