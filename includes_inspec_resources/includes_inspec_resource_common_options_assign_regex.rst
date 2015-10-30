.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use ``assignment_re`` to test a key value using a regular expression:

.. code-block:: ruby

   'key = value'

may be tested using the following regular expression, which determines assignment from key to value:

.. code-block:: ruby

   assignment_re: /^\s*([^=]*?)\s*=\s*(.*?)\s*$/
