.. This is an included file. 

A node is a host that runs a |chef client|. The primary features of a node are groups of attributes and run lists. An attribute is a specific piece of data about a node, such as a network interface, a file system, or the number of clients that may be accepted by an Apache server. A run list is an ordered list of recipes and/or roles that are run in an exact order. Typically, there is a 1:1 mapping between a node and a physical device (a computer, a switch, a router, etc.).

