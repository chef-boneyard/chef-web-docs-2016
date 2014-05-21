.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A |cookbook type_wrapper| cookbook changes the behavior of a |cookbook type_library| cookbook. Some common charactistics of a |cookbook type_wrapper| cookbook include:

* Is always associated 1:1 with a |cookbook type_library| cookbook
* Is never based on a cookbook that has been forked from |github|
* Typically makes a small number of specific changes within the |cookbook type_wrapper| cookbook, but otherwise makes no changes to the |cookbook type_library| cookbook
* Is sometimes extended to meet organizational requirements, such as adding new recipes, attributes, or custom resources
* Is unique to an organization
* Should follow a naming pattern that includes both the name of the |cookbook type_library| cookbook on which the |cookbook type_wrapper| cookbook is based preceded by a |cookbook type_wrapper| name that is used globally across the organization for all |cookbook type_wrapper| cookbooks, e.g. ``organization_name-library_name``
