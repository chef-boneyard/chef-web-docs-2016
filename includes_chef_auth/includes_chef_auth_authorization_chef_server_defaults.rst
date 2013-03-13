.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef hosted| and |chef private| servers include default security groups: ``Admins``, ``Billing-admins``, ``Clients``, and ``Users``. Each users can be assigned to one (or more) of these groups. In many cases, the name of the permission effectively describes what that permission allows a user to do. For example, actions that retrieve an object's state require ``READ`` access, whereas actions that delete objects require ``DELETE``.

In general, most |chef| organizations do not need to do anything more than assign users to the default security groups in |chef|. |chef hosted| and |chef private| include the following default security groups:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Security Group
     - Description
   * - **Admins**
     - The default permissions for all users of |chef| who will be administrators.
   * - **Billing-admins**
     - The default permissions for all users of |chef| who will need to manage billing information.
   * - **Clients**
     - The default permissions for non-human users, such as the |chef client| that is installed on every node registered with the |chef server|.
   * - **Users**
     - The default permissions for all human users of |chef| who are not administrators.

.. list-table::
   :widths: 100 65 65 65 65 65 65 65
   :header-rows: 1

   * - Security Group
     - Clients
     - Groups
     - Nodes
     - Roles
     - Cookbooks
     - Data Bags
     - Environments
   * - **Admins**
     - ``CREATE`` and ``LIST``
     - ``CREATE`` and ``LIST``
     - ``CREATE`` and ``LIST``
     - ``CREATE`` and ``LIST``
     - ``CREATE`` and ``LIST``
     - ``CREATE`` and ``LIST``
     - ``CREATE`` and ``LIST``
   * - **Billing-admins**
     - 
     - 
     - 
     - 
     - 
     - 
     - 
   * - **Clients**
     - 
     - 
     - ``CREATE`` and ``LIST``
     - ``LIST``
     - ``LIST``
     - ``CREATE`` and ``LIST``
     - ``LIST``
   * - **Users**
     - 
     - 
     - ``CREATE``
     - ``CREATE``
     - ``CREATE``
     - ``CREATE``
     - ``CREATE``
