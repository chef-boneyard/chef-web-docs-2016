.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When a user makes a request to the |chef server oec| using the |api chef server|, permission to perform that action is determined by the following process:

#. Check if the user has permission to the object type
#. If no, recursively check if the user is a member of a security group that has permission to that object 
#. If yes, allow the user to perform the action

Permissions are managed using the |chef manager| in the |chef server oec| user interface.