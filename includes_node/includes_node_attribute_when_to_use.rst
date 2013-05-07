.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


An attribute is a specific detail about a node, such as an IP address, a host name, a list of loaded kernel modules, the version(s) of available programming languages that are available, and so on. An attribute may be unique to a specific node or it can be identical across every node in the organization. Attributes are most commonly set from a cookbook, by using |knife|, or are retrieved by |ohai| from each node prior to every |chef| run. All attributes are indexed for search on the |chef server|. Good candidates for attributes include:

* any cross-platform abstraction for an application, such as the path to a configuration files
* default values for tunable settings, such as the amount of memory assigned to a process or the number of workers to spawn
* anything that may need to be persisted in node data between |chef| runs

In general, attribute precedence is set to enable cookbooks and roles to define attribute defaults, for normal attributes to define the values that should be specific for a node, and for override attributes to force a certain value, even when a node already has that value specified.

One approach is to set attributes at the same precedence level by setting attributes in a cookbook's attribute files, and then also setting the same default attributes (but with different values) using a role. The attributes set in the role will be deep merged on top of the attributes from the attribute file, and the attributes set by the role will take precedence over the attributes specified in the cookbook's attribute files.

Another (much less common) approach is to set a value only if an attribute has no value. This can be done by using the ``_unless`` variants of the attribute priority methods: ``default_unless``, ``set_unless``, and ``override_unless``. These variants should be used carefully because when they are used, the attributes applied to nodes may become out of sync with the values in the cookbooks as these cookbooks are updated. This approach can create situations where two otherwise identical nodes end up having slightly different configurations. This approach can also be a challenge to debug, so it is recommended to use the ``_unless`` variants carefully (and only when they are really necessary).