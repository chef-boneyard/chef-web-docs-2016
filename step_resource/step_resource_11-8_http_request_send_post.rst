.. This is an included how-to. 

To send a ``POST`` request that has a |json| message body and uses basic authentication:

.. code-block:: ruby

   http_request 'posting data' do
     action :post
     url 'http://example.com/check_in'
     message :some => 'data'
     headers({'AUTHORIZATION' => "Basic #{
       Base64.encode64('username:password')
       }"
     })
   end

The message is posted as ``application/data`` and not ``multipart/form-data`` or ``application/x-www-form-urlencoded``.

