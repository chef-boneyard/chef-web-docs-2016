.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


So what are users?

* A user is typically an individual who interacts with the |chef server oec| server through the user interface or from a workstation using |knife|
* A user, for the purposes of discussing role-based access control, is also the |chef client|, which requires access to the |chef server| to pull down cookbooks, get the latest node object, update the node object at the end of a |chef client| run, and so on
* A user can also be any other entity that requires access to the |chef server|, such as a custom subcommand in a |knife| plugin, a custom |curl| or |ruby| script, a string that is executed using the ``knife exec`` subcommand, and so on

The |chef server oec| servers recognize users based on private keys, where each private key is effectively a user that can send authorization requests via the |api chef server|. The private keys are typically assigned to the |chef client| and to the user of a workstation, from which that user will execute |knife| subcommands and other actions. 

For example, the user of a workstation is an administrator for the |chef server|. That user also uses two custom |knife| plugins and (occasionally) needs ad hoc access to the |chef server| from the command line, sometimes |curl| and sometimes using the ``knife exec`` subcommand. This user can use the same private key for each of these actions and when requests are authorized, the |chef server oec| server will apply the same role-based access control model to all of those actions.

Effectively, it's the private key that the |chef server oec| server consider to be "users".

The role-based access control model in the |chef server oec| server also maps to the common users and groups approach to security, where each user can be assigned permissions individually, or each user can be assigned to one (or more) groups.