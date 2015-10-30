.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use ``standalone_comments`` to test for comments in a configuration file and to ensure they are not integrated into the same lines as code:

.. code-block:: ruby

   'key = value # comment'
   params['key'] = 'value'

or:

.. code-block:: ruby

   'key = value # comment'
   params['key'] = 'value # comment'

To test if comments are standalone, use:

.. code-block:: ruby

   standalone_comments: true

The preceding test will fail with the second example and will pass with the first.
