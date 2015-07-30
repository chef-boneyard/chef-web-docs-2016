.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


#. Open ``recipes/default.rb``.
#. Add:

   .. code-block:: ruby
   
      package 'httpd'
      
      service 'httpd' do
        action :start
      end
      
      template '/var/www/html/index.html' do
        source 'index.html.erb'
      end

#. Save the file.
