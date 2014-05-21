.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A primary goal of cookbook authoring is to create cookbooks are reusable building blocks, applied to nodes as needed. This approach helps ensure consistency and that for the specific configuration defined by a specific cookbook results in the same desired state on every node for which it's used.

.. note:: There is no single way to use |chef|. In fact, one of the main strengths of |chef| is that is used successfully in so many different ways. What works for one organization may not work for another. Ultimately, the process that results in nodes being configured to reflect your organization's goals for desired state is the correct process, regardless of whether the cookbook patterns described in this topic are being followed.

That said, there are some simple patterns that can be followed, with regard to cookbook development. These patterns aren't strict recommendations, but rather general guidelines to be kept in mind:

* All cookbooks should be kept in version source control
* Cookbooks are never forked from the |github| repositories
* Start small, iterate, converge, evaluate, refactor
* It's OK to start with everything in a single |chef repo|, but plan for the day when each cookbook is stored in its own dedicated repository
* Cookbooks that have a dedicated repository are easier to manage and test
* Cookbooks should be as small as possible, focused on specific configuration targets
* Cookbook versions should be frozen at the time they are uploaded to the |chef server|
* Community cookbooks are a great starting point for cookbook authoring; that said, the decision to use community cookbooks should be deliberate and once adopted, community cookbooks should always be considered |cookbook type_library| cookbooks


Cookbooks themselves generally fit into the following four categories:

* |cookbook type_library| cookbooks are core cookbooks designed to configure a specific component on a machine; often, these are typically community cookbooks used without modification, but also can be custom cookbooks designed to address core configurations that may not be available from the set of community cookbooks
* |cookbook type_wrapper| cookbooks makes specific changes to |cookbook type_library| cookbooks by wrapping these changes around the |cookbook type_library| cookbook
* |cookbook type_application| cookbooks apply the full application stack to a single node, ideally a repeatable process across many nodes
* |cookbook type_policy| cookbooks apply policy settings that are defined on the |chef server| to groups of nodes

Think of these cookbooks as building blocks:

.. image:: ../../images/cookbook_types.png


