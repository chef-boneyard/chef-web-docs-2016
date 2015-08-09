.. This is an included how-to. 

.. To delete an SNS topic:

.. code-block:: ruby

   aws_sns_topic 'ref-sns-topic' do
     action :destroy
   end
