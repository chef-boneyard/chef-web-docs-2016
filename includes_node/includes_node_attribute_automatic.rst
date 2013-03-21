.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

An automatic attribute is data that must be understood, but not modified. Automatic attributes are detected by |ohai| before every |chef| run. For example, the IP address of a node, a host name, or the number of loaded kernel modules. When |chef| makes changes to a system during a |chef| run, automatic attributes are used to ensure that |chef| does not make changes to the larger environment in which a node is running. An automatic attribute always has the highest attribute precedence and are saved to the |chef server| at the conclusion of every |chef| run so they can be indexed for search. 
