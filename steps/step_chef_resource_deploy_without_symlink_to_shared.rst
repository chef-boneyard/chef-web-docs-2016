.. This is an included how-to. 

To deploy without symlinking to shared:
When deploying non-rails code and you don't want any symlinks to the shared folder, use parentheses or Hash.new to avoid an ambiguity in Ruby

.. code-block:: ruby

   deploy "/my/apps/dir/deploy" do
     # OTHER PARAMETERS
     # ...
    
     # THIS DOESN'T WORK, the {} gets parsed as a code block:
     symlinks {}
     # Instead, use parentheses:
     symlinks({})
     # Or create your hash by calling new instead of using a literal:
     symlinks Hash.new
   end
