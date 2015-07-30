.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


A file named ``hello.txt`` should be created with content of ``Hello, world!``, permissions of ``0644``, owned by the ``chef`` user and ``chef`` group:

.. code-block:: ruby
       
   file 'hello.txt' do
     action :create
     content 'Hello, world!'
     mode '0644'
     owner 'chef'
     group 'chef'
   end
