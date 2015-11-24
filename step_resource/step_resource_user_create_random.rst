.. This is an included how-to.

.. To create a user named "random":

.. code-block:: ruby

   user 'random' do
     supports :manage_home => true
     comment 'User Random'
     uid '1234'
     gid '1234'
     home '/home/random'
     shell '/bin/bash'
     password '$1$JJsvHslV$szsCjVEroftprNn4JHtDi'
   end
