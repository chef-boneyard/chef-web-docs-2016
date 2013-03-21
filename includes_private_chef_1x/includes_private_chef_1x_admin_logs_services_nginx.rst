.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``nginx`` service creates both supervisor and administrator logs. The administrator logs contain both access and error logs for each virtual host utilized by |chef private|. Each of the following logs require external log rotation.

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Logs
     - Description
   * - ``/var/log/opscode/nginx/access.log``
     - The Web UI and API HTTP access logs.
   * - ``/var/log/opscode/nginx/error.log``
     - The Web UI and API HTTP error logs.
   * - ``/var/log/opscode/nginx/internal-account.access.log``
     - The ``opscode-account`` internal load-balancer access logs.
   * - ``/var/log/opscode/nginx/internal-account.error.log``
     - The ``opscode-account`` internal load-balancer error logs.
   * - ``/var/log/opscode/nginx/internal-authz.access.log``
     - The ``opscode-authz`` internal load-balancer access logs.
   * - ``/var/log/opscode/nginx/internal-authz.error.log``
     - The ``opscode-authz`` internal load-balancer error logs.
   * - ``/var/log/opscode/nginx/internal-chef.access.log``
     - The ``opscode-chef`` and ``opscode-erchef`` internal load-balancer access logs.
   * - ``/var/log/opscode/nginx/internal-chef.error.log``
     - The ``opscode-chef`` and ``opscode-erchef`` internal load-balancer error logs.
   * - ``/var/log/opscode/nginx/nagios.access.log``
     - The ``nagios`` access logs.
   * - ``/var/log/opscode/nginx/nagios.error.log``
     - The ``nagios`` error logs.
   * - ``/var/log/opscode/nginx/rewrite-port-80.log``
     - The rewrite logs for traffic that uses HTTP instead of HTTPS.

To follow the logs for this service, enter the following command:

.. code-block:: bash

   $ private-chef-ctl tail nginx
