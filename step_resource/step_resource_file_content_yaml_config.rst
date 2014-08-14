.. This is an included how-to. 

The following example shows how to use the ``content`` attribute to write a |yaml| file: 

.. code-block:: ruby

   file("#{app['deploy_to']}/shared/config/settings.yml") do
     owner app["owner"]
     group app["group"]
     mode "644"
     content app.to_yaml
   end
