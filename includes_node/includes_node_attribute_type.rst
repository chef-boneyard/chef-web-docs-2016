.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Attribute types can be any of the following:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute Type
     - Description
   * - ``default``
     - A ``default`` attribute is automatically reset at the start of every |chef| run and has the lowest attribute precedence. A cookbook should be authored to use ``default`` attributes as often as possible.
   * - ``force_default``
     - A ``force_default`` attribute is used to ensure that an attribute defined in a cookbook (by an attribute file or by a recipe) takes precedence over a ``default`` attribute set by a role or an environment.
   * - ``normal``
     - A ``normal`` attribute is a setting that persists on the target system and is never reset during a |chef| run. A ``normal`` attribute has a higher attribute precedence than a ``default`` attribute.
   * - ``override``
     - An ``override`` attribute is automatically reset at the start of every |chef| run and has a higher attribute precedence than ``default``, ``force_default``, and ``normal`` attributes. An ``override`` attribute is most often specified in a recipe, but can be specified in an attribute file, for a role, and/or for an environment. A cookbook should be authored so that it uses ``override`` attributes only when required.
   * - ``force_override``
     - A ``force_override`` attribute is used to ensure that an attribute defined in a cookbook (by an attribute file or by a recipe) takes precedence over an ``override`` attribute set by a role or an environment.
   * - ``automatic``
     - An ``automatic`` attribute contains data that is identified by |ohai| at the beginning of every |chef| run. An ``automatic`` attribute cannot be modified and always has the highest attribute precedence.

