.. This is an included how-to. 

The following example shows how to use the ``content`` property to write a |yaml| file: 

.. code-block:: ruby

   file "#{app['deploy_to']}/shared/config/settings.yml" do
     owner "app['owner']"
     group "app['group']"
     mode '0755'
     content app.to_yaml
   end
