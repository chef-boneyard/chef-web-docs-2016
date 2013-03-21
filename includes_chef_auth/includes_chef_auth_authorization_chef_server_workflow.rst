.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


When a user makes a request to the |chef hosted| or |chef private| servers using the |api chef server|, whether that user has permission to perform the requested action is determined by the following process:

#. If the request requires ``LIST`` or ``CREATE`` permissions, check to see if that user has those permissions to the object type for which the request has been authorized.
#. If no, recursively check if the user is a member of a security group that has ``LIST`` or ``CREATE`` permissions to the object type. If yes, perform the action.

and/or:

#. If the request requires ``READ``, ``UPDATE``, ``DELETE``, or ``GRANT`` permissions, check to see if that user has those permissions to the object type for which the request has been authorized.
#. If no, recursively check if the user is a member of a security group that has ``READ``, ``UPDATE``, ``DELETE``, or ``GRANT`` permissions to the object type. If yes, perform the action.

Group permissions are set using the |chef manager| in the |chef hosted| or |chef private| user interface.