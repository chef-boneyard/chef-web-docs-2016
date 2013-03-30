.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This configuration file has the following settings for the type of database:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``database_type``
     - The type of database we are using. Only ``postgresql`` is fully supported - while ``mysql`` can be used with |chef private|, it requires the end user to install and configure both the server itself and the |mysql| client libraries. Default value: ``postgresql``. For example:
       ::

          database_type "postgresql"
