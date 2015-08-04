.. This is an included how-to. 

.. To mount a non-block file system

.. code-block:: ruby

   mount '/mount/tmp' do
     pass     0
     fstype   'tmpfs'
     device   '/dev/null'
     options  'nr_inodes=999k,mode=755,size=500m'
     action   [:mount, :enable]
   end
