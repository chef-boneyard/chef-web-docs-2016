.. This is an included how-to. 

The following example shows how to copy a file from one directory to another, locally on a node:

.. code-block:: ruby

   file '/root/1.txt' do
     content IO.read('/tmp/1.txt')
     action :create
   end

where the ``content`` attribute uses the |ruby| ``IO.read`` method to get the contents of the ``/tmp/1.txt`` file.
