.. This is an included how-to. 

.. To test a kitchen.yml file driver:

.. code-block:: ruby

   describe yaml('.kitchen.yaml') do
     its('driver.name') { should eq('vagrant') }
   end
