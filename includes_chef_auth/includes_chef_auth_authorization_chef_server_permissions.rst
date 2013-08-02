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
     - Allows a user to create new objects of the given type. Any user who creates an object will be automatically granted object-level permissions to that object.
   * - **LIST (READ)**
     - Allows a user to view all of the objects of the given type.

The following entities may be assigned ``CREATE`` and ``LIST`` permissions: 

* Individual users who have permission to log on to the |chef hosted| or |chef private| web user interface
* Every node that will be managed by the |chef client| and every workstation from which |knife| will be used to manage data on the |chef server|
* The ``admin``, ``clients``, ``users``, and ``billing-admin`` security groups, plus any custom security groups that may be added

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
