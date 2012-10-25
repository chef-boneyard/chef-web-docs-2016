.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following parameters can be passed to the attribute keyword in order to validate a parameter that has been set on a resource in a recipe:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``:default``
     - Use to set the default value for a parameter.
   * - ``:kind_of``
     - Use to ensure that a value is a ``kind_of?(whatever)``. Pass this parameter as an array to ensure that a value is one of those types.
   * - ``:required``
     - Use to raise an exception if a parameter is missing. Valid values: ``true`` or ``false``. Default value: ``false``.
   * - ``:regex``
     - Use to match the value of a parameter against a regular expression.
   * - ``:equal_to``
     - Use to match the value of a parameter with ``==``. An array means it can be equal to any of the values.
   * - ``:name_attribute``
     - Use to specify the name of a resource. Valid value: ``true`` or ``false``.
   * - ``:callbacks``
     - Use to take a hash of ``Procs``, which should return ``true`` if the argument is valid. The key will be inserted into the error message if the ``Proc`` does not return true: ``"Option #{key}'s value #{value} #{message}!"``.
   * - ``:respond_to``
     - Use to ensure that a value has a given method. Takes one method name or an array of method names.