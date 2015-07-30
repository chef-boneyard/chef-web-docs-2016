.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


The TYPE named NAME should be ACTION’d with ATTRIBUTES:

.. code-block:: ruby
       
   file 'hello.txt' do
     action :create
     content 'Hello, world!'
     mode '0644'
     owner 'chef'
     group 'chef'
   end
