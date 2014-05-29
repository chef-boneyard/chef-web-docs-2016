.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


In addition to these basic guidelines, the cookbooks themselves should follow some general patterns. Keep the following cookbook pattern types in mind when deciding how to build reusable cookbooks for your organization:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Pattern
     - Description
   * - .. image:: ../../images/icon_cookbook_type_library.png
     - A |cookbook type_base| cookbook is a core cookbook that configures a specific part of a node, such as the platform itself---|centos|, |mac os x|, |redhat|, |ubuntu| or |windows|---but also other components like |runit|, |cron|, or |ntp|. Anything that is considered core to most (or even all) nodes in the organization is a good candidate to be managed using a |cookbook type_base| cookbook. A |cookbook type_base| cookbook is often a community cookbook used without modification, but is sometimes a cookbook that is build to address specific organizational requirements. Typically, this cookbook does not have dependencies on any other cookbook.
   * - .. image:: ../../images/icon_cookbook_type_wrapper.png
     - A |cookbook type_wrapper| cookbook makes specific changes to a |cookbook type_base| cookbook and/or extends that cookbook, effectivelly wrapping around the |cookbook type_base| cookbook a small set of specific changes. This is done (for the most part) to avoid forking a community cookbook, while still using the functionality built into that cookbook.
   * - .. image:: ../../images/icon_cookbook_type_app.png
     - A |cookbook type_app| cookbook applies the configuration necessary to run applications on a node, such as |apache tomcat|, |postgresql|, or |sensu|. One (or more) |cookbook type_app| cookbooks can work together to define the full appllication stack. For example, a base |cookbook type_app| cookbook applies the underlying configuration, a data |cookbook type_app| cookbook sets up the data layer, and a webserver |cookbook type_app| cookbook sets up the node to run as a web server. Ideally, each |cookbook type_app| cookbook represents a repeatable configuration that is usable across many nodes.
   * - .. image:: ../../images/icon_cookbook_type_policy.png
     - A |cookbook type_policy| cookbook applies the policy settings defined on the |chef server| to groups of nodes.

Think of these patterns as building blocks. Use them to help visualize how the cookbooks your organization uses fit together:

.. image:: ../../images/cookbook_types.png


