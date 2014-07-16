.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource dsc_resource| resource allows any |windows powershell dsc| resource to be used in a |chef| recipe, including the following `built-in resources <http://technet.microsoft.com/en-us/library/dn249921.aspx>`_:

.. list-table::
   :widths: 80 420
   :header-rows: 1

   * - DSC Resource
     - Description
   * - ``Archive``
     - Use to unpack archive (.zip) files at specified paths.
   * - ``Environment``
     - Use to manage system environment variables.
   * - ``File``
     - Use to manage files and directories.
   * - ``Group``
     - Use to manage local groups.
   * - ``Log``
     - Use to log configuration messages.
   * - ``Package``
     - Use to install and manage packages.
   * - ``WindowsProcess``
     - Use to configure |windows| processes.
   * - ``Registry``
     - Use to manage registry keys and registry key values.
   * - ``WindowsFeature``
     - Use to add or remove |windows| features and roles.
   * - ``Script``
     - Use to run |powershell| script blocks.
   * - ``Service``
     - Use to manage services.
   * - ``User``
     - Use to manage local user accounts.

as well as any `custom resources <http://technet.microsoft.com/en-us/library/dn249921.aspx>`_ that have been added to your environment. |microsoft| `frequently adds new resources <http://gallery.technet.microsoft.com/scriptcenter/DSC-Resource-Kit-All-c449312d>`_ to the |windows powershell_dsc| resource collection.