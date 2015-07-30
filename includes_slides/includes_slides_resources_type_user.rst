.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


A user that should be managed:

.. code-block:: ruby
       
   user 'nginx' do
     comment 'Nginx <nginx@example.com>'
     uid '500'
     gid '500'
     supports :manage_home => true
   end
