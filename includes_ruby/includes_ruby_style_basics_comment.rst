.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use a comment to explain code that exists in a cookbook or recipe. Anything after a ``#`` is a comment.

.. code-block:: ruby

   # This is a comment.

.. 
.. 
.. Ideally, a comment explains why the code exists, while the code itself describes how |chef| will apply it. For example:
.. 
.. .. code-block:: ruby
.. 
..    action :restart do
..    
..    # With Upstart, restarting the service doesn't behave "as expected".
..    # We want the post-start stanzas, which wait until the service is
..    # available before returning.
..    #
..    # http://upstart.ubuntu.com/cookbook/#restart
..    
..      service "#{new_resource.name} :restart stop #{mysql_name}" do
..        service_name mysql_name
..        provider Chef::Provider::Service::Upstart
..        action :stop
..      end
..    
..      service "#{new_resource.name} :restart start #{mysql_name}" do
..        service_name mysql_name
..        provider Chef::Provider::Service::Upstart
..        action :start
..      end
..    
..    end
.. 
.. 
