.. This is an included how-to. 

.. To create a random user:

.. code-block:: ruby

   user 'random' do
     supports :manage_home => true
     comment 'Random User'
     uid '1234'
     gid 'users'
     home '/home/random'
     shell '/bin/bash'
     password '$1$JJsvHslV$szsCjVEroftprNn4JHtDi'
   end
