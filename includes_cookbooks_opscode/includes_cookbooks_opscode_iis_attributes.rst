.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This cookbook includes the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``node['iis']['accept_eula']``
     - Indicates that the terms of the end user license agreement is accepted. Default value: ``false``.
   * - ``node['iis']['home']``
     - The home directory for |microsoft iis|. Default value: ``%WINDIR%\System32\inetsrv``.
   * - ``node['iis']['conf_dir']``
     - The location for |microsoft iis| configuration settings. Default value: ``%WINDIR%\System32\inetsrv\config``.
   * - ``node['iis']['pubroot']``
     - The public directory. Default value: ``%SYSTEMDRIVE%\inetpub``.
   * - ``node['iis']['docroot']``
     - The home directory. Default value: ``%SYSTEMDRIVE%\inetpub\wwwroot``.
   * - ``node['iis']['log_dir']``
     - The directory in which log files are located. Default value: ``%SYSTEMDRIVE%\inetpub\logs\LogFiles``.
   * - ``node['iis']['cache_dir']``
     - The directory in which cached data is located. Default value: ``%SYSTEMDRIVE%\inetpub\temp``.


