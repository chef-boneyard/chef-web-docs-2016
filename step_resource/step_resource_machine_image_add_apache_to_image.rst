.. This is an included how-to. 

.. To add Apache to a machine image, and then build a machine:

.. code-block:: ruby

   machine_image 'web_image' do
     recipe 'apache2'
   end
   
   machine 'web_machine' do
    from_image 'web_image'
   end
