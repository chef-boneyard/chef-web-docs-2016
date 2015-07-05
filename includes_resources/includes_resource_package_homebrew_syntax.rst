.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |resource package_homebrew| resource block manages a package on a node, typically by installing it. The simplest use of the |resource package_homebrew| resource is:

.. code-block:: ruby

   homebrew_package 'package_name'

which will install the named package using all of the default options and the default action (``:install``).

The full syntax for all of the attributes that are available to the |resource package_homebrew| resource is:

.. code-block:: ruby

   homebrew_package 'name' do
     homebrew_user              String, Integer
     notifies                   # see description
     options                    String
     package_name               String, Array # defaults to 'name' if not specified
     provider                   Chef::Provider::Package::Homebrew
     source                     String
     timeout                    String, Integer
     version                    String, Array
     action                     Symbol # defaults to :install if not specified
   end

where 

* ``homebrew_package`` tells the |chef client| to manage a package
* ``'name'`` is the name of the package
* ``:action`` identifies which steps the |chef client| will take to bring the node into the desired state
* ``homebrew_user``, ``options``, ``package_name``, ``provider``, ``source``, ``timeout``, and ``version`` are attributes of this resource, with the |ruby| type shown. |see attributes|
