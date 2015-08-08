.. This is an included how-to. 

.. To skip a reattach attempt:

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs' do
     machine 'ref-machine-2'
     device '/dev/xvdf'
   end
