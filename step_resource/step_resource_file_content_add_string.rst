.. This is an included how-to. 

The following example specifies a directory, and then uses the ``content`` attribute to add a string to the file created in that directory: 

.. code-block:: ruby

   status_file = "/path/to/file/status_file"
   
   file status_file do
     owner 'root'
     group 'root'
     mode 00600
     content 'My favourite foremost coastal Antarctic shelf, oh Larsen B!'
   end




