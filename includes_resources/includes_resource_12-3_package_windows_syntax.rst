.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource package_windows| resource block manages a package on a node, typically by installing it. The simplest use of the |resource package_windows| resource is:

.. code-block:: ruby

   windows_package 'package_name'

which will install the named package using all of the default options and the default action (``:install``).

The full syntax for all of the attributes that are available to the |resource package_windows| resource is:

.. code-block:: ruby

   windows_package 'name' do
     installer_type             Symbol
     notifies                   # see description
     options                    String
     provider                   Chef::Provider::Package::Windows
     returns                    String, Integer, Array
     source                     String # defaults to 'name' if not specified
     timeout                    String, Integer
     action                     Symbol # defaults to :install if not specified
   end

where 

* ``windows_package`` tells the |chef client| to manage a package
* ``'name'`` is the name of the package
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state
* ``installer_type``, ``options``, ``package_name``, ``provider``, ``returns``, ``source``, and ``timeout`` are attributes of this resource, with the |ruby| type shown. |see attributes|
