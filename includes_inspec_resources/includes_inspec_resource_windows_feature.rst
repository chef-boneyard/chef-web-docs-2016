.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``windows_feature`` |inspec resource| to test features on |windows|. The ``Get-WindowsFeature`` cmdlet returns the following values: ``Property Name``, ``DisplayName``, ``Description``, ``Installed``, and ``InstallState``, returned as a |json| object similar to:

.. code-block:: javascript

   {
     "Name": "XPS-Viewer",
     "DisplayName": "XPS Viewer",
     "Description": "The XPS Viewer reads, sets permissions, and digitally signs XPS documents.",
     "Installed": false,
     "InstallState": 0
   }
