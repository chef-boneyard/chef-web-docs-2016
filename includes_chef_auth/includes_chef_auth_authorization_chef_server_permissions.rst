.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


There are two types of permissions: global and object-specific.

Global permissions:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Permission
     - Description
   * - **CREATE**
     - Allows a user to create new objects of the given type.
   * - **LIST (READ)**
     - Allows a user to view all of the objects of the given type.

Object-specific permissions:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Permission
     - Description
   * - **DELETE**
     - Allows a user to delete an object.
   * - **GRANT**
     - Allows a user to define permissions to an object for another user.
   * - **READ**
     - Allows a user to view the current state of an object.
   * - **UPDATE**
     - Allows a user to update the state of an object.

When a user makes a request to the |chef hosted| or |chef private| servers using the |api chef server|, whether that user has permission to perform the requested action is determined by the following process:

#. If the request requires ``LIST`` or ``CREATE`` permissions, check to see if that user has those permissions to the object type for which the request has been authorized.
#. If no, recursively check if the user is a member of a security group that has ``LIST`` or ``CREATE`` permissions to the object type. If yes, perform the action.

and/or:

#. If the request requires ``READ``, ``UPDATE``, ``DELETE``, or ``GRANT`` permissions, check to see if that user has those permissions to the object type for which the request has been authorized.
#. If no, recursively check if the user is a member of a security group that has ``READ``, ``UPDATE``, ``DELETE``, or ``GRANT`` permissions to the object type. If yes, perform the action.

Group permissions are set using the |manager| in the |chef hosted| or |chef private| user interface.