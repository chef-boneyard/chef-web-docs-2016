.. This is an included how-to. 

.. To test for multiple instances of Nginx:

.. code-block:: ruby

   describe command('ps aux | egrep "nginx: master" | egrep -v "grep" | wc -l') do
     its('stdout') (should eq '/^1$/' )
   end
