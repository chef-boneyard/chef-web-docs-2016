.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``guard_interpreter`` attribute may be set to any of the following values:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Value
     - Description
   * - ``:bash``
     - Use to evaluate a string command using the |resource script_bash| resource.
   * - ``:batch``
     - Use to evaluate a string command using the |resource batch| resource.
   * - ``:csh``
     - Use to evaluate a string command using the |resource script_csh| resource.
   * - ``:default``
     - Default. Use to execute the default interpreter as identified by the |chef client|.
   * - ``:perl``
     - Use to evaluate a string command using the |resource script_perl| resource.
   * - ``:powershell_script``
     - Use to evaluate a string command using the |resource powershell_script| resource.
   * - ``:python``
     - Use to evaluate a string command using the |resource script_python| resource.
   * - ``:ruby``
     - Use to evaluate a string command using the |resource script_ruby| resource.
