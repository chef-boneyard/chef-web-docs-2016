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
* Recipes in cookbooks should be modular, minimally prescriptive, and use custom resources to expose repeatable patterns that are needed to solve implementation-specific requirements
