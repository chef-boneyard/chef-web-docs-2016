.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Work with strings:

.. code-block:: ruby

   'single quoted'   # => "single quoted"
   "double quoted"   # => "double quoted"
   'It\'s alive!'    # => "It's alive!" (the \ is an escape character)
   '1 + 2 = 5'       # => "1 + 2 = 5" (numbers surrounded by quotes behave like strings)

Convert a string to uppercase or lowercase. For example, a hostname named "Foo":

.. code-block:: ruby

   node['hostname'].downcase    # => "foo"
   node['hostname'].upcase      # => "FOO"
