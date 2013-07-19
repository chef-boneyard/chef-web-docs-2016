.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``application_port``
     - |application_port| Default value: ``8080``.
   * - ``application_server_role``
     - |application_server_role| Default value: ``#{application name}_application_server``.
   * - ``port``
     - |port lwrp application_nginx_load_balancer|
   * - ``server_name``
     - |server_name lwrp application_nginx_load_balancer| Default value: the |fqdn| for the node.
   * - ``ssl``
     - |use ssl| Default value: ``false``.
   * - ``ssl_certificate``
     - |ssl_certificate|
   * - ``ssl_certificate_key``
     - |ssl_certificate key|
   * - ``static_files``
     - |static_files lwrp application_nginx_load_balancer|
   * - ``template``
     - |template lwrp application_nginx_load_balancer|


