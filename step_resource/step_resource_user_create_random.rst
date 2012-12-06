.. This is an included how-to. 

.. To create a random user:

.. code-block:: ruby

   user "random" do
     comment "Random User"
     uid 1000
     gid "users"
     home "/home/random"
     shell "/bin/zsh"
     password "$1$JJsvHslV$szsCjVEroftprNn4JHtDi."
   end
