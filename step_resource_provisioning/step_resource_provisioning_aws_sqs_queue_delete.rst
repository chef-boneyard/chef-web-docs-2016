.. This is an included how-to. 

.. To delete a queue in |amazon sqs|:

.. code-block:: ruby

   aws_sqs_queue 'ref-sqs-queue' do
     action :destroy
   end
