.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Define a method (or a function, if you like):

.. code-block:: ruby
 
   def do_something_useless( first_argument, second_argument)
     puts "You gave me #{first_argument} and #{second_argument}"
   end
   
   do_something_useless( 'apple', 'banana')
   # => "You gave me apple and banana"
   do_something_useless 1, 2
   # => "You gave me 1 and 2"
   # see how the parens are optional if there's no confusion about what to do
