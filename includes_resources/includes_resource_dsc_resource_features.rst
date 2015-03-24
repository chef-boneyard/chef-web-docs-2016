.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

For built-in |windows powershell_dsc_short| resources, use the following values:

.. list-table::
   :widths: 250 250
   :header-rows: 1

   * - Value
     - Description
   * - ``:archive``
     - Use to to `unpack archive (.zip) files <http://technet.microsoft.com/en-us/library/dn249917.aspx>`_.
   * - ``:environment``
     - Use to to `manage system environment variables <http://technet.microsoft.com/en-us/library/dn282121.aspx>`_.
   * - ``:file``
     - Use to to `manage files and directories <http://technet.microsoft.com/en-us/library/dn282129.aspx>`_.
   * - ``:group``
     - Use to to `manage local groups <http://technet.microsoft.com/en-us/library/dn282124.aspx>`_.
   * - ``:log``
     - Use to to `log configuration messages <http://technet.microsoft.com/en-us/library/dn282117.aspx>`_.
   * - ``:package``
     - Use to to `install and manage packages <http://technet.microsoft.com/en-us/library/dn282132.aspx>`_.
   * - ``:registry``
     - Use to to `manage registry keys and registry key values <http://technet.microsoft.com/en-us/library/dn282133.aspx>`_.
   * - ``:script``
     - Use to to `run Powershell script blocks <http://technet.microsoft.com/en-us/library/dn282130.aspx>`_.
   * - ``:service``
     - Use to to `manage services <http://technet.microsoft.com/en-us/library/dn282120.aspx>`_.
   * - ``:user``
     - Use to to `manage local user accounts <http://technet.microsoft.com/en-us/library/dn282118.aspx>`_.
   * - ``:windowsfeature``
     - Use to to `add or remove Windows features and roles <http://technet.microsoft.com/en-us/library/dn282127.aspx>`_.
   * - ``:windowsoptionalfeature``
     - Use to configure |windows| optional features.
   * - ``:windowsprocess``
     - Use to to `configure Windows processes <http://technet.microsoft.com/en-us/library/dn282123.aspx>`_.

Any |windows powershell_dsc_short| resource may be used in a |chef| recipe. For example, the |windows powershell_dsc_resource_kit| contains resources for `configuring Active Directory components <http://gallery.technet.microsoft.com/scriptcenter/xActiveDirectory-f2d573f3>`_, such as ``xADDomain``, ``xADDomainController``, and ``xADUser``. Assuming that these resources are available to the |chef client|, the corresponding values for the ``resource_name`` attribute would be: ``:xADDomain``, ``:xADDomainController``, and ``xADUser``.
