.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.


A service that should be started:

.. code-block:: ruby
       
   service 'haproxy' do
     supports :restart => :true
     action [:enable, :start]
   end
