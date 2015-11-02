.. This is an included how-to. 

.. To test for RedHat:

.. code-block:: ruby

   describe os['family'] do
     it { should eq 'redhat' }
   end
