.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There are two types of attributes that can be used with roles:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute Type
     - Description
   * - ``default``
     - A default attribute has the lowest attribute precedence. A default attribute is automatically reset each time |chef| runs.
   * - ``override``
     - An override attribute is an attribute that is specified in a recipe (or a run-list) and are often set only for specific roles or nodes. An override attribute has a higher attribute precedence than default or normal attributes. An override attribute is automatically reset each time |chef| runs.

