.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.



A primary goal of cookbook authoring is to create cookbooks that are reusable as building blocks, where each cookbook defines a specific configuration piece used by the organization. For example, all servers across the organization will run |cron| and |ntp|, but only front-end servers in production will be load balanced. This building block relies on some basic guidelines:

* All cookbooks are kept in version source control
* Cookbooks are never forked from their |github| repositories
* Cookbooks may be kept in the |chef repo|, but are typically kept in their own dedicated repositories outside of the |chef repo|
* Cookbooks are kept as small as possible and are focused on specific configuration targets, with changes to cookbooks tracked as versions of that cookbook
* Cookbooks are better when unit and integration testing is done against them, automatically
* When a cookbook is uploaded to the |chef server|, it is versioned and that version is frozen
* Community cookbooks are a great resource; often a community cookbook can be used wholesale (without changes), but sometimes a community cookbook needs a wrapper that is used to ensure specific organizational requirements are met

In addition to these basic guidelines, the cookbooks themselves should follow some general patterns. Keep the following cookbook pattern types in mind when deciding how to build reusable cookbooks for your organization:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Pattern
     - Description
   * - .. image:: ../../images/icon_cookbook_type_library.png
     - A |cookbook type_library| cookbook is a core cookbook that configures a specific part of a node. A |cookbook type_library| cookbook is often a community cookbook used without modification, but is sometimes a cookbook that is build to address specific organizational requirements.
   * - .. image:: ../../images/icon_cookbook_type_wrapper.png
     - A |cookbook type_wrapper| cookbook makes specific changes to a |cookbook type_library| cookbook and/or extends that cookbook, effectivelly wrapping around the |cookbook type_library| cookbook a small set of specific changes.
   * - .. image:: ../../images/icon_cookbook_type_app.png
     - A |cookbook type_app| cookbook applies the configuration necessary to run applications on a node. One (or more) |cookbook type_app| cookbooks work together to define the full appllication stack. For example, a base |cookbook type_app| cookbook applies the underlying configuration, a data |cookbook type_app| cookbook sets up the data layer, and a webserver |cookbook type_app| cookbook sets up the machine to run as a web server. Ideally, each |cookbook type_app| cookbook represents a repeatable configuration that is usable across any number of nodes.
   * - .. image:: ../../images/icon_cookbook_type_policy.png
     - A |cookbook type_policy| cookbook applies the policy settings defined on the |chef server| to groups of nodes.

Think of these cookbooks as building blocks:

.. image:: ../../images/cookbook_types.png


