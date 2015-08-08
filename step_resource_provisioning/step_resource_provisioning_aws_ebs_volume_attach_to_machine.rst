.. This is an included how-to. 

.. To attach to a machine:

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     machine 'ref-machine-1'
     device '/dev/xvdf'
   end
