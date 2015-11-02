.. This is an included how-to. 

.. To test for Ubuntu:

.. code-block:: ruby

   describe os['family'] do
     it { should eq 'debian' }
   end
