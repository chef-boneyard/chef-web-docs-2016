.. This is an included how-to. 

.. To test for Microsoft Windows:

.. code-block:: ruby

   describe os['family'] do
     it { should eq 'windows' }
   end
