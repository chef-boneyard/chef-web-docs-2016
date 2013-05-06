.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

There are two types of attributes that can be used with roles:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute Type
     - Description
   * - ``default``
     - A ``default`` attribute is automatically reset at the start of every |chef| run and has the lowest attribute precedence. A cookbook should be authored to use ``default`` attributes as often as possible.
   * - ``override``
     - An ``override`` attribute is automatically reset at the start of every |chef| run and has a higher attribute precedence than ``default``, ``force_default``, and ``normal`` attributes. An ``override`` attribute is most often specified in a recipe, but can be specified in an attribute file, for a role, and/or for an environment. A cookbook should be authored so that it uses ``override`` attributes only when required.

