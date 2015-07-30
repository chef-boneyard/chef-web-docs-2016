.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


A cron job that should be configured:

.. code-block:: ruby
       
   cron 'restart webserver' do
     hour '2'
     minute '0'
     command 'service httpd restart'
   end
