.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource package| resource may specify multiple packages and/or versions for platforms that use |yum| or |apt|. Specifing multiple packages and/or versions allows a single transaction to 

* Download the specified packages and versions via a single HTTP transaction
* Update or install multiple packages with a single resource during the |chef client| run

For example:

.. code-block:: ruby

   package 'some packages' do
     package_name ['package1', 'package2', ...]
     action :upgrade
   do

or:

.. code-block:: ruby

   package 'some packages' do
     package_name ['package1', 'package2']
     version ['version1', 'version2']
     action :install
   do

.. code-block:: ruby

   package 'some packages' do
     package_name ['package1', 'package2']
     version ['version1']
     action :remove
   do

.. code-block:: ruby

   package 'some packages' do
     package_name ['package1']
     version ['version1', 'version2']
     action :purge
   do


.. note:: Notifications and subscriptions do not need to be updated when packages and versions are added or removed from the ``package_name`` or ``version`` attributes.
