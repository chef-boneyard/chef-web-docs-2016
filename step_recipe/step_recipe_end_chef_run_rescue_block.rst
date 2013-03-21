.. This is an included how-to. 

Since recipes are written in |ruby|, they can be written to attempt to handle error conditions using the ``rescue`` block.

For example:

.. code-block:: ruby

   begin
     dater = data_bag_item(:basket, "flowers")
     rescue Net::HTTPServerException
       # maybe some retry code here?
     raise "message_to_be_raised"
   end

where ``data_bag_item`` makes an HTTP request to the |chef server| to get a data bag item named ``flowers``. If there is a problem, the request will return a ``Net::HTTPServerException``. The ``rescue`` block can be used to try to retry or otherwise handle the situation. If the ``rescue`` block is unable to handle the situation, then the ``raise`` keyword is used to specify the message to be raised.
