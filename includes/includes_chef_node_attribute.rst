.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An attribute is a specific detail about a node, such as an IP address, a host name, a list of loaded kernel modules, the version(s) of available programming languages that are available, and so on. Attributes can be maintained in a variety of ways, such as by re-loading a cookbook (that contains new attributes), by using |knife|, or by using JSON data. During a |chef| run, a |chef client| will save node attributes to the |chef server| so they can be indexed for search. When a |chef client| runs, all of the attributes saved on the |chef server| are compared to the attributes cached on the |chef client|. The |chef client| will update the attributes based on attribute precedence rules that are defined for each attribute.

