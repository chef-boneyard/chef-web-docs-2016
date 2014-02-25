.. This is an included how-to. 

.. The following is an example of using the ``data_bag`` method:

.. code-block:: ruby

   data_bag('users') #=> ['sandy', 'jill']

Iterate over the contents of the data bag to get the associated ``data_bag_item``:

.. code-block:: ruby

   data_bag('users').each do |user|
     data_bag_item('users', user)
   end
