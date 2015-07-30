.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


A resource describes the state of something by declaring an action:

.. code-block:: ruby
       
   file 'hello.txt' do
     action :create
   end
