.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``mod_*`` option to install individual modules (extensions) for |microsoft iis|. The following recipes can be included in the run-list for a node to help ensure that any required components of |microsoft iis| are installed and configured properly:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Component
     - Description
   * - ``mod_aspnet``
     - Use to install |microsoft aspdotnet| runtime components.
   * - ``mod_auth_basic``
     - Use to install support for basic authentication.
   * - ``mod_auth_windows``
     - Use to install |windows| authentication, which allows clients to authenticate using |kerberos| or |ntlm|.
   * - ``mod_compress_dynamic``
     - Use to install dynamic content compression support. Enabling dynamic compression allows a more efficient use of bandwidth; however, if the server's processor utilization is already high, the CPU load imposed by dynamic compression may affect site performance.
   * - ``mod_compress_static``
     - Use to install support for static content compression.
   * - ``mod_deploy``
     - Use to install the |microsoft web deployment tool|, which simplifies the migration, management, and deployment of |microsoft iis| web servers, applications, and websites.
   * - ``mod_iis6_metabase_compat``
     - Use to install |microsoft iis| the metabase compatibility component.
   * - ``mod_isapi``
     - Use to install extension and filter support for |microsoft isapi|.
   * - ``mod_logging``
     - Use to install and enable HTTP logging for website activity, logging tools, and custom logging (for HTTP request/response headers, |microsoft iis| server variables, and client-side fields with simple configuration).
   * - ``mod_management``
     - Use to install the management console, which can be used to support the management of local and remote web servers.
   * - ``mod_mvc3``
     - Use to install |microsoft dotnet| MVC3 runtime components.
   * - ``mod_security``
     - Use to install URL authorization (which authorizes client access to the URLs that comprise a web application), request filtering (which configures rules to block selected client requests), and IP security (which allows or denies access to content based on an IP address or a domain name).
   * - ``mod_tracing``
     - Use to install support for tracing |microsoft aspdotnet| applications and failed requests.
   * - ``mod_urlrewrite``
     - Use to install support for URL rewrite rules using rule templates, rewrite maps, and |microsoft dotnet| providers.