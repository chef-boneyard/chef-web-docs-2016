.. This is an included how-to. 

.. To create and attach an EBS volume:

.. code-block:: ruby

   aws_ebs_volume 'ref-volume-ebs-2' do
     availability_zone 'a'
     size 1
     machine 'ref-machine-1'
     device '/dev/xvdf'
   end
