.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use a function to help specify how rules are applied. A function may be used in ``when``, ``then``, and ``otherwise`` sections in rules. A function has the following syntax:

.. code-block:: ruby

   function_name(param1, param2, paramN)

.. note:: A function that is defined in the ``when`` section of a rule MUST return a Boolean value, or it will fail.
