.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following parameters can be used to define a conditional execution for a resource:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Parameter
     - Description
   * - ``not_if``
     - Indicates whether this resource should not be applied. If ``true``, this action should not be performed. If ``false``, this action should always be performed.
   * - ``only_if``
     - Indicates whether only this resource is applied. If ``true``, this action should always be performed. If ``false``, this action should never be performed.
