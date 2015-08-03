.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the |resource package_windows| resource to manage |microsoft installer package| packages for the |windows| platform.

.. note:: This resource effectively replaces the ``windows_package`` resource found in the |cookbook windows| cookbook by moving that functionality into the |chef client|. The |cookbook windows| cookbook may still be used, but in that situation use the generic |resource package| resource instead of the |resource package_windows| resource.

.. note:: This resource does not support downloading packages from the network. Please use the |resource remote_file| resource for this purpose. Then, install packages locally using the source property to point at the package location on disk.
