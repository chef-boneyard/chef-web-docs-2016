.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|windows powershell| is a task-based command-line shell and scripting language developed by |microsoft|. |windows powershell| uses a document-oriented approach for managing |windows|-based machines, similar to the approach that is used for managing |unix|- and |linux|-based machines. |windows powershell| is `a tool-agnostic platform <http://technet.microsoft.com/en-us/library/bb978526.aspx>`_ that supports using |chef| for configuration management. |windows powershell_dsc| is a feature of |windows powershell| that provides a set of language extensions, cmdlets, and resources that can be used to declaratively configure software. The |chef client| can leverage any |windows powershell_dsc| resource natively within any |chef| recipe. A bridge layer in the |chef client| ensures that |windows powershell_dsc| resources are mapped accurately to resources in the |chef client|. This means that **any** |windows dsc| resource---built-in and custom resources!---may be used in any |chef| recipe and are automatically available to the |chef client| for configuration management.

|microsoft| `frequently adds new resources <http://gallery.technet.microsoft.com/scriptcenter/DSC-Resource-Kit-All-c449312d>`_ to the |windows powershell_dsc| resource collection. Powershell.org maintains `a github repository <https://github.com/powershellorg/dsc>`_ that contains a large collection of custom |windows powershell dsc| resources.

.. note:: |windows powershell| 4.0 is required for using the |resource dsc_resource|, |resource dsc_mof|, and |resource dsc_script| resources with |chef|.
