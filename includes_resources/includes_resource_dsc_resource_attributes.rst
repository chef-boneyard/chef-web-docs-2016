.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``property``
     - |property dsc_resource| Format: ``property :dsc_property_name, "value"``.
   * - ``resource_name``
     - |name powershell_dsc_resource| This value is case-insensitive and must be a symbol that matches the name of the |windows powershell_dsc_short| resource.

       For built-in |windows powershell_dsc_short| resources, possible values: ``:archive`` (to `unpack archive (.zip) files <http://technet.microsoft.com/en-us/library/dn249917.aspx>`_), ``:environment`` (to `manage system environment variables <http://technet.microsoft.com/en-us/library/dn282121.aspx>`_), ``:file`` (to `manage files and directories <http://technet.microsoft.com/en-us/library/dn282129.aspx>`_), ``:group`` (to `manage local groups <http://technet.microsoft.com/en-us/library/dn282124.aspx>`_), ``:log`` (to `log configuration messages <http://technet.microsoft.com/en-us/library/dn282117.aspx>`_), ``:package`` (to `install and manage packages <http://technet.microsoft.com/en-us/library/dn282132.aspx>`_), ``:registry`` (to `manage registry keys and registry key values <http://technet.microsoft.com/en-us/library/dn282133.aspx>`_), ``:script`` (to `run Powershell script blocks <http://technet.microsoft.com/en-us/library/dn282130.aspx>`_), ``:service`` (to `manage services <http://technet.microsoft.com/en-us/library/dn282120.aspx>`_), ``:user`` (to `manage local user accounts <http://technet.microsoft.com/en-us/library/dn282118.aspx>`_), ``:windowsfeature`` (to `add or remove Windows features and roles <http://technet.microsoft.com/en-us/library/dn282127.aspx>`_), and ``:windowsprocess`` (to `configure Windows processes <http://technet.microsoft.com/en-us/library/dn282123.aspx>`_).

       Any |windows powershell_dsc_short| resource may be used in a |chef| recipe. For example, the |windows powershell_dsc_resource_kit| contains resources for `configuring Active Directory components <http://gallery.technet.microsoft.com/scriptcenter/xActiveDirectory-f2d573f3>`_, such as ``xADDomain``, ``xADDomainController``, and ``xADUser``. Assuming that these resources are available to the |chef client|, the corresponding values for the ``resource_name`` attribute would be: ``:xADDomain``, ``:xADDomainController``, and ``xADUser``.
