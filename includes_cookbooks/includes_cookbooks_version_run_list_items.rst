.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A version constraint can be specified for recipe items that are part of a run-list. Use ``@`` (at sign) to indicate a version constraint. Only the "equal to" constraint can be used to specify a version constraint in a run-list. For example:

.. code-block:: ruby

   {"run_list":["recipe[nginx@1.2.3]"]}