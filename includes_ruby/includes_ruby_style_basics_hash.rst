.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


A |ruby hash| is a list with keys and values. Sometimes they don't have a set order:

.. code-block:: ruby

   h = {
     'first_name' => "Bob",
     'last_name'  => "Jones"
   }

And sometimes they do. For example, first name then last name:

.. code-block:: ruby

   h.keys              # => ["first_name", "last_name"]
   h['first_name']     # => "Bob"
   h['last_name']      # => "Jones"
   h['age'] = 23
   h.keys              # => ["first_name", "age", "last_name"]
   h.values            # => ["Jones", "Bob", 23]
