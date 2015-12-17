.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use ``standalone_comments`` to parse comments as a line, otherwise inline comments are allowed:

.. code-block:: ruby

   'key = value # comment'
   params['key'] = 'value # comment'


Use ``standalone_comments: false``, to parse the following:

.. code-block:: ruby

   'key = value # comment'
   params['key'] = 'value'
