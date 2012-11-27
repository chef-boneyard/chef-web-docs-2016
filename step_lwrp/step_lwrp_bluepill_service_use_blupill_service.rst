.. This is an included how-to. 

To use the ``bluepill_service`` resource directly:

.. code-block:: ruby

   bluepill_service "my_app" do
     action [:enable, :load, :start]
   end
