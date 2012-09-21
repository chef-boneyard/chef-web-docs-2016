.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An attribute is a specific detail about a node, such as an IP address, a host name, a list of loaded kernel modules, the version(s) of available programming languages that are available, and so on. Attributes can be managed in a variety of ways, such as by re-loading a cookbook (that contains new attributes), by using |knife|, or by using |json| data. During a |chef| run, a |chef client| will save node attributes to the |chef server| so they can be indexed for search. When a |chef client| runs, it will retrieve all of the attributes saved on the |chef server|, will compare them to the attributes stored on the |chef client|, and will update them based on the precedence rules that are defined for each attribute.

