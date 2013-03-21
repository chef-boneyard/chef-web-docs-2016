.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


In general, most users of |chef| do not need to do anything with the out-of-the-box security groups and default settings, as they are sufficient to ensure that all users, nodes, workstations, and admins have the right access to the right things, including as the number of nodes managed by |chef| increases and as varying types of data are uploaded to the |chef server|.

The |chef hosted| and |chef private| servers include default security groups:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Security Group
     - Description
   * - **admins**
     - The default permissions for all users of |chef| who will be administrators.
   * - **billing-admins**
     - The default permissions for all users of |chef| who will need to manage billing information.
   * - **clients**
     - The default permissions for non-human users, such as the |chef client| that is installed on every node registered with the |chef server| and the workstation, from which |knife| will be used to manage data on the |chef server|.
   * - **users**
     - The default permissions for all human users of |chef| who are not administrators.

The ``admin`` security group is granted ``CREATE`` and ``LIST`` permissions by default and the ``users`` security group is granted the ``LIST`` permission by default. Each individual user, client, and member of the ``clients`` and ``billing-admins`` security groups may be assigned the ``CREATE`` and ``LIST`` permissions, but are not done so by default.

In ``admin`` security group is also granted ``DELETE``, ``GRANT``, ``READ``, and ``UPDATE`` permission to all objects on the |chef server|. When users create new objects, users will be automatically granted ``DELETE``, ``GRANT``, ``READ``, and ``UPDATE`` permission those objects.
