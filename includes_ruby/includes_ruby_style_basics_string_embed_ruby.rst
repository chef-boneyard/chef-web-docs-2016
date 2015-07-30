.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Embed |ruby| in a string:

.. code-block:: ruby

   x = 'Bob'
   'Hi, #{x}'      # => "Hi, Bob"
   'Hello, #{x}'   # => "Hello, \#{x}" Notice that single quotes don't work with #{}
