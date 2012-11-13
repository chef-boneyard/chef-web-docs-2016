.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.



Many people who are new to |ruby| often find that it doesn't take very long to get up to speed with the basics. For example, it's useful to know how to check the syntax of a |ruby| file, such as the contents of a cookbook named "my_cookbook.rb"::

   $ ruby -c my_cookbook_file.rb

to return::

   Syntax OK

Here is a quick rundown of some basic |ruby| commands::

   # anything after # is a comment.
    
   # assigning a local variable:
   x = 1
 
   # some basic arithmetic:
   1 + 2           # => 3
   2 * 7           # => 14
   5 / 2           # => 2   (because both arguments are whole numbers)
   5 / 2.0         # => 2.5 (because one of the numbers had a decimal place)
   1 + (2 * 3)     # => 7   (you can use parens to group expressions)
 
   # strings
   'single quoted' # => "single quoted"
   "double quoted" # => "double quoted"
   'It\'s alive'   # => "It's alive!"
   "1 + 2 = 5"     # => "1 + 2 = 5" (numbers surrounded by quotes may exhibit string-like behavior)
 
   # a string with embedded ruby
   x = "Bob"
   "Hi, #{x}"      # => "Hi, Bob"
   'Hello, #{x}'   # => "Hello, \#{x}" Notice that single quotes don't work with #{}
 
   # some basic truths
   true            # => true
   false           # => false
   nil             # => nil
   1 == 1          # => true ( == tests for equality )
   1 == true       # => false ( == tests for equality )
 
   # ! means not
   !true           # => false
   !false          # => true
   !nil            # => true
   1 != 2          # => true (1 is not equal to 2)
   1 != 1          # => false (1 is not not equal to itself)
 
   # !! (not not) converts something to either true or false
   !!true          # => true
   !!false         # => false
   !!nil           # => false (when pressed, nil is false)
   !!0             # => true (zero is NOT false).
 
   # arrays are lists
   x = ["a", "b", "c"] # => ["a", "b", "c"]
   x[0]                # => "a" (zero is the first index)
   x.first             # => "a" (see?)
   x.last              # => "c"
   x + ["d"]           # => ["a", "b", "c", "d"]
   x                   # => ["a", "b", "c"] ( x is unchanged)
   x = x + ["d"]       # => ["a", "b", "c", "d"]
   x                   # => ["a", "b", "c", "d"]
 
   # a hash is a list with keys and values
   # - but no set order (!)
   h = {
   "first_name" => "Bob",
   "last_name"  => "Jones"
   }
   # => { "first_name => "Bob", "last_name" => "Jones" }
   h.keys              # => ["first_name", "last_name"]
   h["first_name"]     # => "Bob"
   h["last_name"]      # => "Jones"
   h["age"] = 23
   h.keys              # => ["first_name", "age", "last_name"]
   h.values            # => ["Jones", "Bob", 23]
 
   # perl-style regular expressions
   "I believe"  =~ /I/                       # => 0 (matches at the first character)
   "I believe"  =~ /lie/                     # => 4 (matches at the 5th character)
   "I am human" =~ /bacon/                   # => nil (no match - bacon comes from pigs)
   "I am human" !~ /bacon/                   # => true (correct, no bacon here)
   /give me a ([0-9]+)/ =~ "give me a 7"     # => 0 (matched)
 
   # you can do things conditionally
 
   # with an if statement
   if false
     # this won't happen
   elsif nil
     # this won't either
   else
     # code here will run though
   end
 
   # or a case statement
   x = "dog"
   case x
   when "fish"
    # this won't happen
   when "dog", "cat", "monkey"
     # this will run
   else
     # the else is an optional catch-all
   end
 
   # def defines a method (functions, if you like)
 
   def do_something_useless( first_argument, second_argument)
     puts "You gave me #{first_argument} and #{second_argument}"
   end
 
   do_something_useless( "apple", "banana")
   # => "You gave me apple and banana"
   do_something_useless 1, 2
   # => "You gave me 1 and 2"
   # see how the parens are optional if there's no confusion about what to do
 
   # call a method on something with .method_name()
   x = "My String"
   x.split(" ")            # => ["My", "String"]
   x.split(" ").join(", ") # => "My, String"


To learn more about |ruby|, see the following:

* |http ruby lang org|
* |http opscode blog btm ruby|
* |http codeacademy ruby|
* |http rubycentral book|
* |http ruby doc org|



