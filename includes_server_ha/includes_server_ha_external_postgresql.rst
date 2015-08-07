.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


.. warning:: This is about an upcoming feature in |chef server| 12.2.

The following diagram highlights the specific changes that occur when |postgresql| is configured and managed independently of the |chef server| configuration.

.. image:: ../../images/server_components_postgresql.svg
   :width: 500px

The following table describes the components in an external |postgresql| configuration that are different from the default configuration of the |chef server|:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Component
     - Description
   * - |chef server_title|
     - The |chef server| configuration file is updated to point to an independently configured set of servers for |postgresql|.
   * - |postgresql|
     - .. include:: ../../includes_chef_server/includes_chef_server_component_postgresql.rst

       This represents the independently configured set of servers that are running |postgresql| and are configured to act as the data store for the |chef server|.
