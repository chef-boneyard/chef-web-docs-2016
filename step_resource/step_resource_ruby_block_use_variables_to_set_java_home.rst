.. This is an included how-to. 

The following example shows how to use a variable within a |ruby| block to set the ``java_home`` environment variable:

.. code-block:: ruby

   ruby_block 'set-env-java-home' do
     block do
       ENV['JAVA_HOME'] = java_home
     end
   end
