.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This cookbook includes the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``node['iis']['accept_eula']``
     - |iis_accept_eula| Default value: ``false``.
   * - ``node['iis']['home']``
     - |iis_home| Default value: ``%WINDIR%\System32\inetsrv``.
   * - ``node['iis']['conf_dir']``
     - |iis_conf_dir| Default value: ``%WINDIR%\System32\inetsrv\config``.
   * - ``node['iis']['pubroot']``
     - |iis_pubroot| Default value: ``%SYSTEMDRIVE%\inetpub``.
   * - ``node['iis']['docroot']``
     - |iis_docroot| Default value: ``%SYSTEMDRIVE%\inetpub\wwwroot``.
   * - ``node['iis']['log_dir']``
     - |iis_log_dir| Default value: ``%SYSTEMDRIVE%\inetpub\logs\LogFiles``.
   * - ``node['iis']['cache_dir']``
     - |iis_cache_dir| Default value: ``%SYSTEMDRIVE%\inetpub\temp``.


