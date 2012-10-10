.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:application_port``
     - The port on which the application server will run. Default value: ``8080``.
   * - ``:application_server_role``
     - The name of a role. During a |chef| run, a search will be performed to application servers. Default value: ``#{application name}_application_server``.
   * - ``:port``
     - The port to which |nginx| will bind. Default value: ``80``.
   * - ``:server_name``
     - The virtual host name for a server. Defaults to the node |fqdn|.
   * - ``:ssl``
     - Indicates whether |ssl| is being used. Default value: ``false``.
   * - ``:ssl_certificate``
     - The |ssl| certificate.
   * - ``:ssl_certificate_key``
     - The |ssl| certificate key.
   * - ``:static_files``
     - A hash that maps URLs to files. Default value: ``{}``.
   * - ``:template``
     - The name of a template that will be rendered to create a context file. Default value: ``load_balancer.conf.erb`` (from this cookbook).


