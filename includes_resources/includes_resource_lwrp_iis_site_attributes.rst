.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``application_pool``
     - The application pool to which a site belongs.
   * - ``bindings``
     - A string that identifies the information needed to communicate with a site. This information may be an IP address, unspecified IP addresses, a port number, or an (optional) host header. For example: ``111.111.1.1:443:www.opscode.com`` or ``*:443:``.
   * - ``host_header``
     - The host header, domain, or host name to which a site is mapped. Default value: all host headers.
   * - ``path``
     - A local path that is mapped to the root application and root virtual directory. If this is not specified, |microsoft iis| will generate this path.
   * - ``port``
     - The port on which a site will listen. Default value: ``80``.
   * - ``protocol``
     - The HTTP protocol type to which a site responds: ``:http`` or ``:https``. Default value: ``:http``.
   * - ``site_id``
     - A unique identifier for the site. If this is not specified, |microsoft iis| will generate a unique identifier.
   * - ``site_name``
     - The name of the site.
