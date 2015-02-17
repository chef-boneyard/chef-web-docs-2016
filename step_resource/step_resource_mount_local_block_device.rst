.. This is an included how-to. 

.. To mount a local block device:

.. code-block:: ruby

   mount '/mnt/local' do
     device '/dev/sdb1'
     fstype 'ext3'
   end
