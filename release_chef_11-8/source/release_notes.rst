=====================================================
Release Notes: Chef 11.8.0
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

.. warning:: This document is tracking the features that will be added to the |chef client| 11.8.0 release.

Known Issues
=====================================================
The following issues are known for |chef 11-8| and/or may affect the behavior of your current environment if you upgrade to |chef 11-8|:

* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx

What's New
=====================================================
The following items are new for |chef 11-8| and/or are changes from previous versions. The short version:

* **Local mode for the chef-client** The |chef client| can now be run in local mode, which allows the |chef client| to run against the local |chef repo| as if it were running against a |chef server|.
* **New configuration settings** Three configuration settings have been added to support the use of local mode: ``chef_zero[:enabled]``, ``chef_zero[:port]``, and ``local_mode``.
* **New bff_package resource** Install a package on the |ibm aix| platform using |ibm bffcreate|.

Required Updates
-----------------------------------------------------
.. Change this to "No updates required." in the event that there are no required updates.

.. warning:: The following updates must also be made at the same time as any upgrade to |chef 11-8|.

* xxxxx
* xxxxx

|chef client| Local Mode
-----------------------------------------------------
The |chef client| can be run in local mode using the ``--local-mode`` option:

``-z``, ``--local-mode``
   |local_mode|

.. include:: ../includes_chef_client_local_mode.rst


New Configuration Settings
-----------------------------------------------------
Three new settings are available for the |knife rb| and |client rb| configuration files:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``chef_zero[:enabled]``
     - |chef_zero_enabled| Default value: ``false``. For example:
       ::
 
          chef_zero[:enabled]true
   * - ``chef_zero[:port]``
     - |chef_zero_port| Default value: ``8889``. For example:
       ::
 
          chef_zero[:port] 8889
   * - ``local_mode``
     - |local_mode| For example:
       ::
 
          local_mode true

|resource package_bff| Resource 
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_package_bff.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_bff_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_bff_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_package_bff_attributes.rst




What's Fixed
=====================================================

.. warning:: This will be populated at the last possible minute, so as to have the most complete list of tickets possible.

The following bugs were fixed:

* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx

What's Improved
=====================================================
The following improvements were made:

* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx

New Features
=====================================================
The following features were added:

* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
* `CHEF-xxxxx <http://tickets.opscode.com/browse/CHEF-xxxxx>`_  --- xxxxx
