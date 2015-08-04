.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


Use the |resource file| resource to define the contents of a file inline within the recipe:

.. code-block:: ruby
       
   file '/etc/motd' do
     content 'Property of COMPANY NAME'
     action :create
     mode '0644'
     owner 'root'
     group 'root'
   end
