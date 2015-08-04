.. This is an included how-to. 

.. To run a command on an |erlang| node:

.. code-block:: ruby

   erl_call 'list names' do
     code 'net_adm:names().'
     distributed true
     node_name 'chef@latte'
   end
