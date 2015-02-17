.. This is an included how-to. 

The following example will create a symbolic link from ``/tmp/file`` to ``/etc/file``:

.. code-block:: ruby

   link '/tmp/file' do
     to '/etc/file'
   end
