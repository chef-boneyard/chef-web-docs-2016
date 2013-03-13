.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


xxxxx


Definitions
Every object on Hosted Chef is secured with fine-grained role-based access control (RBAC)

Each object has an access control list (ACL) composed of up to five access control entries (ACEs): create, read, update, delete, and grant.

This article uses the following definitions:

    Actor: An actor is an API Client or Hosted Chef user. It is often easiest to think of Hosted Chef users simply as API clients.
    Objects: An object is an entity on which an actor can have permission to take action. For example, a node is an object.
    Object Type: Every object has a type (node, role, cookbook, etc).
    Group: A group is a collection of actors. Hosted Chef defines an admins, users, clients, and billing-admins group for every organization. Additional groups can be added as a means of grouping users based on their role within your organization. See Managing Users and your Private Key with the Hosted Chef Management Console for further details.

When an API request is made to Hosted Chef, a check occurs to ensure that the requesting actor has the necessary permission on either the object or object type. 